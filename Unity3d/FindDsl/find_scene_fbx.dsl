input("*.fbx")
{
  int("maxTriangleCount", 1000);
  bool("hasAnimation", false);
	string("filter", "");
	feature("source", "sceneassets");
}
filter
{
  var(0) = loadasset(assetpath);  
  var(1) = collectmeshinfo(var(0), importer);
	//unloadasset(var(0));
	order = var(1).triangleCount;
	if(var(1).triangleCount >= maxTriangleCount && assetpath.Contains(filter) && (!hasAnimation || var(1).clipCount>0)){
	  info = format("clip count:{0}, max keyframe count:{1}, skinned mesh count:{2}, mesh filter count:{3}, vertex count:{4}, triangle count:{5}, bone count:{6}, material count:{7}",
	    var(1).clipCount, var(1).maxKeyFrameCount, var(1).skinnedMeshCount, var(1).meshFilterCount, var(1).vertexCount, var(1).triangleCount, var(1).boneCount, var(1).materialCount
	    );
	  1;
	}else{
	  0;
	};
};