package com.shieldsquare.services;

import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;



import com.mongodb.AggregationOutput;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.shieldsquare.model.Insight_details;

public class Insight_DAO_Impl implements Insight_DAO {

	
	//IP_and_Hits
	public ArrayList<Insight_details> getIpandTotalHits(int sid, String ipadd,
			String date) throws UnknownHostException {

		String collectionname = "prodresultlistCollection_";
		collectionname = collectionname.concat(date + "_" + sid);
		String ip_Address = ipadd;

		ArrayList<Insight_details> arrIpDetails = new ArrayList<Insight_details>();

		// Getting connections with Mongo DB
		MongoClient mongoClient = new MongoClient("108.59.82.165", 27017);

		//System.out.println("connecting");
		List<String> dbs = mongoClient.getDatabaseNames();
		//System.out.println(dbs);

		DB db = mongoClient.getDB("ss2dbfinal");
		//System.out.println("List of Collections-" + db.getCollectionNames());

		DBCollection dbcoll = db.getCollection(collectionname);
		//System.out.println(dbcoll);

		// Generating Query
		// Match field

		BasicDBList ls1 = new BasicDBList();
				ls1.add(new BasicDBObject("apidata._zpsbd6", ip_Address));
				DBObject match = new BasicDBObject("$match", new BasicDBObject("$and",
						ls1));

				// Group field
				DBObject groupByCluase = new BasicDBObject("_id", "$apidata._zpsbd6");
				groupByCluase.put("count", new BasicDBObject("$sum", 1));
				DBObject groupField = new BasicDBObject("$group", groupByCluase);

				// sort field
				DBObject sort = new BasicDBObject("$sort", new BasicDBObject("count",
						-1));
			
				// Storing field in one List
				List<DBObject> ls = Arrays.asList(match, groupField, sort);
				AggregationOutput output = dbcoll.aggregate(ls);



		// Getting data
		Map<String, String> map = new LinkedHashMap<String, String>();
		for (DBObject result1 : output.results()) {

			Insight_details ipd = new Insight_details();
			if (result1.get("_id") != null) {

				String id = result1.get("_id").toString();
				ipd.setIP(id);
				if (id.length() > 1000) {
					id = id.substring(0, 999);
				}

				map.put(id, result1.get("count").toString());

				int Count = (Integer) result1.get("count");
				ipd.setIp_Total_Hits(Count);

				arrIpDetails.add(ipd);
			}
		}
		return arrIpDetails;
	}
	
	
	// IP Distinct Page and Count

	public ArrayList<Insight_details> getNumberofHitsCountforGivenfIP(int sid,
			String ipadd, String date) throws UnknownHostException {

		String collectionname = "prodresultlistCollection_";
		collectionname = collectionname.concat(date + "_" + sid);
		String ip_Address = ipadd;

		ArrayList<Insight_details> arrIpDetails = new ArrayList<Insight_details>();

		MongoClient mongoClient = new MongoClient("108.59.82.165", 27017);

		System.out.println("connecting");
		List<String> dbs = mongoClient.getDatabaseNames();
//		System.out.println(dbs);

		DB db = mongoClient.getDB("ss2dbfinal");
	//	System.out.println("List of Collections-" + db.getCollectionNames());

		DBCollection dbcoll = db.getCollection(collectionname);
	//	System.out.println(dbcoll);

		BasicDBList ls1 = new BasicDBList();
		ls1.add(new BasicDBObject("apidata._zpsbd6", ip_Address));
		DBObject match = new BasicDBObject("$match", new BasicDBObject("$and",
				ls1));

		DBObject groupByCluase = new BasicDBObject("_id", "$apidata._zpsbd4");
		groupByCluase.put("count", new BasicDBObject("$sum", 1));
		DBObject groupField = new BasicDBObject("$group", groupByCluase);

		DBObject group2Cluase = new BasicDBObject("_id", "1");
		group2Cluase.put("count", new BasicDBObject("$sum", 1));
		DBObject groupF1 = new BasicDBObject("$group", group2Cluase);

		DBObject sort = new BasicDBObject("$sort", new BasicDBObject("count",
				-1));

		List<DBObject> ls = Arrays.asList(match, groupField, groupF1, sort);
		AggregationOutput output = dbcoll.aggregate(ls);

		Map<String, String> map = new LinkedHashMap<String, String>();
		for (DBObject result1 : output.results()) {

			Insight_details ipd = new Insight_details();
			if (result1.get("_id") != null) {

				String id = result1.get("_id").toString();
				ipd.setId(id);
				// System.out.println(id);
				if (id.length() > 1000) {
					id = id.substring(0, 999);
				}

				map.put(id, result1.get("count").toString());

				int hits = (Integer) result1.get("count");
				ipd.setTotal_hits_count(hits);
				// System.out.println(hits);

				arrIpDetails.add(ipd);
			}
		}
		return arrIpDetails;
	}

	
	//URL and Count
	public ArrayList<Insight_details> getUrlandCount(int sid,
			String ipadd, String date) throws UnknownHostException {

		String collectionname = "prodresultlistCollection_";
		collectionname = collectionname.concat(date + "_" + sid);
		String ip_Address = ipadd;

		ArrayList<Insight_details> arrIpDetails = new ArrayList<Insight_details>();

		MongoClient mongoClient = new MongoClient("108.59.82.165", 27017);

		System.out.println("connecting");
		List<String> dbs = mongoClient.getDatabaseNames();
	//	System.out.println(dbs);

		DB db = mongoClient.getDB("ss2dbfinal");
	//	System.out.println("List of Collections-" + db.getCollectionNames());

		DBCollection dbcoll = db.getCollection(collectionname);
	//	System.out.println(dbcoll);


		BasicDBList ls1 = new BasicDBList();
				ls1.add(new BasicDBObject("apidata._zpsbd6", ip_Address));
				DBObject match = new BasicDBObject("$match", new BasicDBObject("$and",
						ls1));

				// Group field
				DBObject groupByCluase = new BasicDBObject("_id", "$apidata._zpsbd4");
				groupByCluase.put("count", new BasicDBObject("$sum", 1));
				DBObject groupField = new BasicDBObject("$group", groupByCluase);

				// sort field
				DBObject sort = new BasicDBObject("$sort", new BasicDBObject("count",
						-1));
				DBObject limit = new BasicDBObject("$limit", 20);

				// Storing field in one List
				List<DBObject> ls = Arrays.asList(match, groupField, sort, limit);
				AggregationOutput output = dbcoll.aggregate(ls);
				
		Map<String, String> map = new LinkedHashMap<String, String>();
		for (DBObject result1 : output.results()) {

			Insight_details ipd = new Insight_details();
			if (result1.get("_id") != null) {

				String id = result1.get("_id").toString();
				ipd.setUrl(id);
				if (id.length() > 1000) {
					id = id.substring(0, 999);
				}

				map.put(id, result1.get("count").toString());

				int hits = (Integer) result1.get("count");
				ipd.setUrl_Hits(hits);

				arrIpDetails.add(ipd);
			}
		}
		return arrIpDetails;
	}
	
	
	//Section and Hits
	
	public ArrayList<Insight_details> getSectionDetails(int sid, String ipadd,
			String date) throws UnknownHostException {

		String collectionname = "prodresultlistCollection_";
		collectionname = collectionname.concat(date + "_" + sid);
		String ip_Address = ipadd;

		ArrayList<Insight_details> arrIpDetails = new ArrayList<Insight_details>();

		// Getting connections with Mongo DB
		MongoClient mongoClient = new MongoClient("108.59.82.165", 27017);

		System.out.println("connecting");
		List<String> dbs = mongoClient.getDatabaseNames();
	//	System.out.println(dbs);

		DB db = mongoClient.getDB("ss2dbfinal");
		//System.out.println("List of Collections-" + db.getCollectionNames());

		DBCollection dbcoll = db.getCollection(collectionname);
		//System.out.println(dbcoll);

		// Generating Query
		// Match field
		BasicDBList ls1 = new BasicDBList();
		ls1.add(new BasicDBObject("apidata._zpsbd6", ip_Address));
		DBObject match = new BasicDBObject("$match", new BasicDBObject("$and",
				ls1));

		// Group field
		DBObject groupByCluase = new BasicDBObject("_id", "$lvl_1");
		// DBObject groupByCluase = new BasicDBObject("_id", "HH");
		groupByCluase.put("count", new BasicDBObject("$sum", 1));
		DBObject groupField = new BasicDBObject("$group", groupByCluase);

		// sort field
		DBObject sort = new BasicDBObject("$sort", new BasicDBObject("count",
				-1));
		DBObject limit = new BasicDBObject("$limit", 20);

		// Storing field in one List
		List<DBObject> ls = Arrays.asList(match, groupField, sort, limit);
		AggregationOutput output = dbcoll.aggregate(ls);

		// Getting data
		Map<String, String> map = new LinkedHashMap<String, String>();
		for (DBObject result1 : output.results()) {

			Insight_details ipd = new Insight_details();
			if (result1.get("_id") != null) {

				String id = result1.get("_id").toString();
				ipd.setSections(id);
				if (id.length() > 1000) {
					id = id.substring(0, 999);
				}

				map.put(id, result1.get("count").toString());

				int Count = (Integer) result1.get("count");
				ipd.setNumberofHitsforSection(Count);

				arrIpDetails.add(ipd);
			}
		}
		return arrIpDetails;
	}

	// Peek Hour and Hits

	public ArrayList<Insight_details> getPeekHourHitsCountforIP(int sid,
			String ipadd, String date) throws UnknownHostException {

		String collectionname = "prodresultlistCollection_";
		collectionname = collectionname.concat(date + "_" + sid);
		String ip_Address = ipadd;

		ArrayList<Insight_details> arrIpDetails = new ArrayList<Insight_details>();

		MongoClient mongoClient = new MongoClient("108.59.82.165", 27017);

	//	System.out.println("connecting");
		List<String> dbs = mongoClient.getDatabaseNames();
	//	System.out.println(dbs);

		DB db = mongoClient.getDB("ss2dbfinal");
		//System.out.println("List of Collections-" + db.getCollectionNames());

		DBCollection dbcoll = db.getCollection(collectionname);
		//System.out.println(dbcoll);

		BasicDBList ls1 = new BasicDBList();
		ls1.add(new BasicDBObject("apidata._zpsbd6", ip_Address));
		DBObject match = new BasicDBObject("$match", new BasicDBObject("$and",
				ls1));

		DBObject groupByCluase = new BasicDBObject("_id", "$HH");
		groupByCluase.put("count", new BasicDBObject("$sum", 1));
		DBObject groupField = new BasicDBObject("$group", groupByCluase);

		DBObject sort = new BasicDBObject("$sort", new BasicDBObject("count",
				-1));

		List<DBObject> ls = Arrays.asList(match, groupField, sort);
		AggregationOutput output = dbcoll.aggregate(ls);

		Map<String, String> map = new LinkedHashMap<String, String>();
		for (DBObject result1 : output.results()) {

			Insight_details ipd = new Insight_details();
			if (result1.get("_id") != null) {

				String id = result1.get("_id").toString();
				ipd.setPeekHour(id);
				if (id.length() > 1000) {
					id = id.substring(0, 999);
				}

				map.put(id, result1.get("count").toString());

				int hits = (Integer) result1.get("count");
				ipd.setPeekHourHitCount(hits);

				arrIpDetails.add(ipd);
			}
		}
		return arrIpDetails;
	}

	
}