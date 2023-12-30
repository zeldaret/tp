import struct
from sys import argv
import json
import traceback

# struct dStage_Elst_data {
#     /* 0x0 */ u8 m_layerTable[15];
# };
def dStage_elstInfoInit(m_entrynum,m_offset,data):
   offset = m_offset
   entries = []
   for i in range(m_entrynum):
      layerTable = []
      for val in data[offset:offset+15]:
         layerTable.append(val)
      entry = {"layerTable":layerTable}
      #print(f"Layer Table Entry {i}: {entry}")
      entries.append(entry)
      offset += 15
   return entries

def dStage_rppnInfoInit(m_entrynum,m_offset,data):
   entries = []
   offset = m_offset
   for i in range(m_entrynum):
      _0,_1,_2,_3,x,y,z = struct.unpack(">BBBBfff",data[offset:offset+0x10])
      entry = {"field_0x0":_0,"field_0x1":_1,"field_0x2":_2,
               "field_0x3":_3,"Position X":x,"Position Y":y,
               "Position Z":z}
      entries.append(entry)
      offset += 0x10
   return entries

def dStage_rpatInfoInit(m_entrynum,m_offset,data):
   entries = []
   offset = m_offset
   for i in range(m_entrynum):
      numPoints,pathIndex,_4,isLoop,_6,firstEntryOffset = struct.unpack(">HhBBHI",data[offset:offset+12])
      entry = {"Number of Points":numPoints,"Path Index":pathIndex,
               "field_0x4":_4,"Looped":isLoop,"field_0x6":_6,"RPPN Entry Index":firstEntryOffset//0x10}
      entries.append(entry)
      offset += 12
   return entries

# struct dStage_Mult_info {
#     /* 0x0 */ f32 mTransX;
#     /* 0x4 */ f32 mTransY;
#     /* 0x8 */ s16 mAngle;
#     /* 0xA */ u8 mRoomNo;
# };  // Size: 0xC
def dStage_multInfoInit(m_entrynum,m_offset,data):
   entires = []
   offset = m_offset
   for i in range(m_entrynum):
      x,y,angle,roomNo,_b = struct.unpack(">ffhBB",data[offset:offset+12])
      entry = {"x":x,"y":y,"Angle":angle,"roomNo":roomNo,"field_0xb":_b}
      #print(f"MULT Entry {i}: {entry}")
      entires.append(entry)
      offset += 12
   return entires

# class stage_actor_data_class {
# public:
#     /* 0x00 */ char mName[8];
#     /* 0x08 */ u32 mParameter;
#     /* 0x0C */ cXyz mSpawnPos;
#     /* 0x18 */ csXyz mAngle;
#     /* 0x1E */ u16 mEnemyNo;
# };  // Size: 0x20
def dStage_actorInit_always(m_entrynum,m_offset,data):
   entries = []
   offset = m_offset
   for i in range(m_entrynum):
      name = str(data[offset:offset+8],"ascii").rstrip('\x00')
      param,x,y,z,ax,ay,az,enemyNo = struct.unpack(">Ifffhhhh",data[offset+8:offset+0x20])
      entry = {"Name":name,"param":param,"x":x,"y":y,"z":z,"Angle X":ax,"Angle Y":ay,"Angle Z":az,"EnemyNo":enemyNo}
      #print(f"PLYR Entry {i}: {entry}")
      entries.append(entry)
      offset += 0x20
   return entries

# struct stage_camera2_data_class {
#     /* 0x00 */ int field_0x0;
#     /* 0x04 */ f32 field_0x4;
#     /* 0x08 */ f32 field_0x8;
#     /* 0x0C */ f32 field_0xc;
#     /* 0x10 */ u8 field_0x10;
#     /* 0x11 */ u8 field_0x11;
#     /* 0x12 */ u8 field_0x12;
#     /* 0x13 */ u8 field_0x13;
#     /* 0x14 */ u16 field_0x14;
#     /* 0x16 */ u16 field_0x16;
# };  // Size: 0x18
def dStage_cameraInit(m_entrynum,m_offset,data):
   entries = []
   offset = m_offset
   for i in range(m_entrynum):
      camera_type = str(data[offset:offset+16],"ascii").rstrip('\x00')
      _10,_11,_12,_13,_14,_16 = struct.unpack(">BBBBHH",data[offset+16:offset+0x18])
      # Beginning value seems to be a string, TODO check
      entry = {"Camera Type":camera_type,
               "field_0x10":_10,"field_0x11":_11,"field_0x12":_12,"field_0x13":_13,
               "field_0x14":_14,"field_0x16":_16,}
      #print(f"CAMERA Entry {i}: {entry}")
      entries.append(entry)
      offset += 0x18
   return entries

# struct roomRead_class {
#     /* 0x0 */ int field_0x0;
#     /* 0x4 */ roomRead_data_class** field_0x4;
# };
# struct roomRead_data_class {
#     /* 0x0 */ u8 field_0x0;
#     /* 0x1 */ u8 field_0x1;
#     /* 0x2 */ u8 field_0x2;
#     /* 0x4 */ u8* field_0x4;
# };
def dStage_roomReadInit(m_entrynum,m_offset,data):
   entries = []
   offset = m_offset
   for i in range(m_entrynum):
      room_data_offset = struct.unpack(">I",data[offset:offset+4])[0]
      offset += 4
      infoTblLen,_1,_2,_pad,infoTblOffset = struct.unpack(">BBBBI",data[room_data_offset:room_data_offset+8])
      infoTbl = []
      for j in range(infoTblLen):
         infoTbl.append(struct.unpack(">B",data[infoTblOffset:infoTblOffset+1])[0])
         infoTblOffset += 1
      #These contain room properties such as time pass, vrbox, sound info
      
      #See dStage_roomRead_dt_c_GetReverb for field1
      #See dStage_roomRead_dt_c_GetTimePass and dStage_roomRead_dt_c_GetVrboxswitch for field2
      #See dStage_roomRead_dt_c_ChkBg and dStage_roomRead_dt_c_GetLoadRoomIndex for infoTbl
      
      #The entries in the tables are room numbers and the first entry is always ORd by 0x80
      #If an entry in the able can be have an AND with 0x80, dStage_roomRead_dt_c_ChkBg will be true
      #Note: The table will always have as many entries as there is the maximum number of rooms
      #For example, if only rooms 0, 1, and 3 exist, there will be 4 entries in the info table
      entry = {"field_0x1":_1,"field_0x2":_2,"Table":infoTbl}
      # print(f"RTBL Entry {i}: {entry}")
      entries.append(entry)
   return entries

# struct stage_arrow_data_class {
#     /* 0x00 */ cXyz mPosition;
#     /* 0x0C */ csXyz mAngle;
# };  // Size: 0x14
def dStage_arrowInit(m_entrynum,m_offset,data):
   offset = m_offset
   entries = []
   for i in range(m_entrynum):
      x,y,z,ax,ay,az,_12,_13 = struct.unpack(">fffhhhBB",data[offset:offset+0x14])
      entry = {"x":x,"y":y,"z":z,"Angle X":ax,"Angle Y":ay,"Angle Z":az,"field_0x12":_12,"field_0x13":_13}
      #print(f"Arrow Entry {i}: {entry}")
      entries.append(entry)
      offset += 0x14
   return entries

def dStage_vrboxInfoInit():
   pass

# struct stage_scls_info_class {
#     /* 0x0 */ char mStage[8];
#     /* 0x8 */ u8 mStart;
#     /* 0x9 */ s8 mRoom;
#     /* 0xA */ u8 field_0xa;
#     /* 0xB */ u8 field_0xb;
#     /* 0xC */ s8 mWipe;
# };  // Size: 0xD
def dStage_sclsInfoInit(m_entrynum,m_offset,data):
   offset = m_offset
   entries = []
   for i in range(m_entrynum):
      stage = str(data[offset:offset+8],"ascii").rstrip('\x00')
      start,room,_a,_b,wipe = struct.unpack(">BbBBb",data[offset+8:offset+13])
      entry = {"Stage":stage,"Start":start,"Room":room,"field_0xa":_a,"field_0xb":_b,"Wipe":wipe}
      entries.append(entry)
      #print(f"SCLS Entry {i}: {entry}")
      offset += 0xD
   return entries
   
def dStage_tgscInfoInit(m_entrynum,m_offset,data):
   entries = []
   offset = m_offset
   for i in range(m_entrynum):
      name = str(data[offset:offset+8],"ascii").rstrip('\x00')
      param,x,y,z,ax,ay,az,enemyNo,scaleX,scaleY,scaleZ,_23 = struct.unpack(">IfffhhhhBBBB",data[offset+8:offset+0x24])
      entry = {"Name":name,"param":param,"x":x,"y":y,"z":z,"Angle X":ax,"Angle Y":ay,"Angle Z":az,"EnemyNo":enemyNo,
               "Scale X":scaleX,"Scale Y":scaleY,"Scale Z":scaleZ,"field_0x23":_23}
      entries.append(entry)
      offset += 0x24
   return entries

def dStage_plightInfoInit():
   pass
def dStage_pathInfoInit():
   pass

# TODO: Change Which FILI is read based on if we're reading a room or not
# Any stage with the format room%d.dzs should use FileList2
# class dStage_FileList_dt_c {
# public:
#     /* 0x00 */ u32 mParameters;
#     /* 0x04 */ f32 mSeaLevel;
#     /* 0x08 */ f32 field_0x8;
#     /* 0x0C */ f32 field_0xc;
#     /* 0x10 */ u8 field_0x10[10];
#     /* 0x1A */ u8 mDefaultCamera;
#     /* 0x1B */ u8 mBitSw;
#     /* 0x1C */ u16 mMsg;
# };  // Size: 0x20
# class dStage_FileList2_dt_c {
# public:
#     /* 0x00 */ f32 mLeftRmX;
#     /* 0x04 */ f32 mInnerRmZ;
#     /* 0x08 */ f32 mRightRmX;
#     /* 0x0C */ f32 mFrontRmZ;
#     /* 0x10 */ u8 mMinFloorNo;
#     /* 0x11 */ u8 mMaxFloorNo;
#     /* 0x12 */ u8 field_0x12;
#     /* 0x13 */ u8 field_0x13;
#     /* 0x14 */ f32 field_0x14;
#     /* 0x18 */ f32 field_0x18;
#     /* 0x1C */ s16 field_0x1c;
# };  // Size: 0x20
def dStage_filiInfoInit(m_entrynum,m_offset,data):
   offset = m_offset
   entries = []
   for i in range(m_entrynum):
      parameters,sea_level,_8,_c = struct.unpack(">Ifff",data[offset:offset+0x10])
      table = []
      for val in data[offset+0x10:offset+0x1A]:
         table.append(val)
      default_camera,bit_sw,msg = struct.unpack(">BBH",data[offset+0x1A:offset+0x1E])
      entry = {"Parameters":parameters,"Sea Level":sea_level,"field_0x8":_8,"field_0xc":_c,
               "field_0x10":table,"Default Camera":default_camera,"Bit Sw":bit_sw,"Msg":msg}
      #print(f"FileList Entry {i}: {entry}")
      entries.append(entry)
      offset += 0x20
   return entries
def dStage_filiInfo2Init(m_entrynum,m_offset,data):
   offset = m_offset
   entries = []
   for i in range(m_entrynum):
      leftRmX,innerRmZ,RightRmX,FrontRmZ,MinFloorNo,MaxFloorNo,_12,_13,_14,_18,_1c = struct.unpack(">ffffBBBBffh",data[offset:offset+30])
      entry = {"Left Room X":leftRmX,"Inner Room Z":innerRmZ,"Right Room X":RightRmX,"Front Room Z":FrontRmZ,
               "Min Floor No.":MinFloorNo,"Max Floor No.":MaxFloorNo,"field_0x12":_12,"field_0x13":_13,
               "field_0x14":_14,"field_0x18":_18,"field_0x1c":_1c}
      entries.append(entry)
      offset += 0x20
   return entries


def dStage_stageDrtgInfoInit():
   pass
def dStage_floorInfoInit():
   pass
def dStage_dmapInfoInit():
   pass

# struct dStage_MapEvent_dt_c {
#     /* 0x00 */ u8 mType;
#     /* 0x01 */ u8 field_0x1;
#     /* 0x02 */ u8 field_0x2;
#     /* 0x03 */ u8 field_0x3;
#     /* 0x04 */ u8 field_0x4;
#     /* 0x05 */ u8 field_0x5;
#     /* 0x06 */ u8 mPriority;
#     /* 0x07 */ u8 field_0x7;
#     /* 0x08 */ u8 field_0x8;
#     /* 0x09 */ u8 field_0x9;
#     /* 0x0A */ u8 field_0xA;
#     /* 0x0B */ u8 field_0xB;
#     /* 0x0C */ u8 field_0xC;
#     /* 0x0D */ char mName[7];
#     /* 0x14 */ u16 field_0x14;
#     /* 0x16 */ u8 field_0x16;
#     /* 0x17 */ u8 field_0x17;
#     /* 0x18 */ u8 mSeType;  // 1: RIDDLE_A, 2: RIDDLE_B
#     /* 0x19 */ u8 field_0x19[0x1B - 0x19];
#     /* 0x1B */ u8 mSwitch;
# };  // SIZE = 0x1C
def dStage_stEventInfoInit(m_entrynum,m_offset,data):
   offset = m_offset
   entries = []
   for i in range(m_entrynum):
      _type,_1,_2,_3,_4,_5,priority,_7,_8,_9,_a,_b,_c = struct.unpack(">BBBBBBBBBBBBB",data[offset:offset+0xD])
      name = None
      try:
         name = str(data[offset+0xD:offset+0x18],"ascii").rstrip('\x00')
      except Exception:
         name = list(data[offset+0xD:offset+0x18])
      #TODO: Check name length
      seType,_1a,_1b,switch = struct.unpack(">BBBB",data[offset+0x18:offset+0x1C])
      entry = {"Type":_type,"field_0x1":_1,"field_0x2":_2,"field_0x3":_3,"field_0x4":_4,"field_0x5":_5,
               "Priority": priority, "field_0x7":_7,"field_0x8":_8,"field_0x9":_9,"field_0xa":_a,"field_0xb":_b,"field_0xc":_c,
               "Name": name,"seType":seType,"field_0x1a":_1a,"field_0x1b":_1b,"switch":switch}
      #print(f"MapEvent {i}: {entry}")
      offset += 0x1C
      entries.append(entry)
   return entries

# struct stage_sound_data {
#     /* 0x00 */ char field_0x0[8];
#     /* 0x08 */ Vec field_0x8;
#     /* 0x14 */ u8 field_0x14;
#     /* 0x15 */ u8 field_0x15;
#     /* 0x16 */ u8 field_0x16;
#     /* 0x17 */ u8 field_0x17;
#     /* 0x18 */ u8 field_0x18;
#     /* 0x19 */ u8 field_0x19;
#     /* 0x1A */ u8 field_0x1a;
# };  // Size: 0x1C
def dStage_soundInfoInit(m_entrynum,m_offset,data):
   entries = []
   offset = m_offset
   for i in range(m_entrynum):
      name = str(data[offset:offset+8],"ascii").rstrip('\x00')
      # print(name)
      x,y,z,_14,_15,_16,_17,_18,_19,_1a,_1b = struct.unpack(">fffBBBBBBBB",data[offset+8:offset+0x1C])
      entry = {"Name":name,"x":x,"y":y,"z":z,"field_0x14":_14,"field_0x15":_15,
               "field_0x16":_16,"field_0x17":_17,"field_0x18":_18,
               "field_0x19":_19,"field_0x1a":_1a,"field_0x1b":_1b}
      entries.append(entry)
      offset += 0x1C
   return entries

# struct stage_pure_lightvec_info_class {
#     // LGT
#     /* 0x00 */ Vec m_position;
#     /* 0x0C */ f32 m_radius;
#     /* 0x10 */ f32 m_directionX;
#     /* 0x14 */ f32 m_directionY;
#     /* 0x18 */ f32 m_spotCutoff;
#     /* 0x1C */ u8 field_0x1c;
#     /* 0x1D */ u8 field_0x1d;
#     /* 0x1E */ u8 field_0x1e;
#     /* 0x1F */ u8 field_0x1f;
# };  // Size: 0x20
def dStage_lgtvInfoInit(m_entrynum,m_offset,data):
   entries = []
   offset = m_offset
   for i in range(m_entrynum):
      x,y,z,rad,dirX,dirY,spot_cutoff,_1c,_1d,_1e,_1f = struct.unpack(">fffffffBBBB",data[offset:offset+0x20])
      entry = {"x":x,"y":y,"z":z,"Radius":rad,"Direction X":dirX,"Direction Y":dirY,
               "Spotlight Cutoff":spot_cutoff,"field_0x1c":_1c,"field_0x1d":_1d,
               "field_0x1e":_1e,"field_0x1f":_1f}
      #print(f"LGTV Entry {i}: {entry}")
      entries.append(entry)
      offset += 0x20
   return entries

# struct stage_envr_info_class {
#     /* 0x0 */ u8 m_pselectID[65];
# };  // Size: 0x41
def dStage_envrInfoInit(m_entrynum,m_offset,data):
   offset = m_offset
   entries = []
   for i in range(m_entrynum):
      dataTable = []
      for val in data[offset:offset+65]:
         dataTable.append(val)
      entry = {"Pselect ID Table":dataTable}
      #print(f"envrInfo Entry {i}: {entry}")
      entries.append(entry)
      offset += 0x41
   return entries

# struct stage_pselect_info_class {
#     /* 0x0 */ u8 mPalIdx[8];
#     /* 0x8 */ f32 mChangeRate;
# };  // Size: 0xC
def dStage_pselectInfoInit(m_entrynum,m_offset,data):
   entries = []
   offset = m_offset
   for i in range(m_entrynum):
      palIds = []
      for val in data[offset:offset+8]:
         palIds.append(val)
      change_rate = struct.unpack(">f",data[offset+8:offset+12])[0]
      entry = {"Palette Ids":palIds,"Change Rate":change_rate}
      entries.append(entry)
      #print(f"Col Info Entry {i}: {entry}")
      offset += 0xC
   return entries
      
def parse_RGB_class(data):
   return struct.unpack(">BBB",data)

# struct stage_palette_info_class {
#     /* 0x00 */ color_RGB_class mActorAmbColor;
#     /* 0x03 */ color_RGB_class mBgAmbColor[4];
#     /* 0x0F */ color_RGB_class mPlightColor[6];
#     /* 0x21 */ color_RGB_class mFogColor;
#     /* 0x24 */ f32 mFogStartZ;
#     /* 0x28 */ f32 mFogEndZ;
#     /* 0x2C */ u8 mVirtIdx;
#     /* 0x2D */ u8 mTerrainLightInfluence;
#     /* 0x2E */ u8 mCloudShadowDensity;
#     /* 0x2F */ u8 field_0x2f;
#     /* 0x30 */ u8 mBloomTblIdx;
#     /* 0x31 */ u8 mBgAmbColor1A;
#     /* 0x32 */ u8 mBgAmbColor2A;
#     /* 0x33 */ u8 mBgAmbColor3A;
# };  // Size: 0x34
def dStage_paletteInfoInit(m_entrynum,m_offset,data):
   entries = []
   offset = m_offset
   for i in range(m_entrynum):
      # print(f"Data {data[offset:offset+0x34]}")
      actor_amb_color = parse_RGB_class(data[offset:offset+3])
      offset += 3
      bg_amb_colors = []
      for j in range(4):
         bg_amb_colors.append(parse_RGB_class(data[offset:offset+3]))
         offset += 3
      p_light_colors = []
      for j in range(6):
         p_light_colors.append(parse_RGB_class(data[offset:offset+3]))
         offset += 3
      fog_color = parse_RGB_class(data[offset:offset+3])
      offset += 3
      fog_start_z,fog_end_z,virt_idx,terrain_light_influence,cloud_shadow_density,_2f,bloom_tbl_idx,bg_amb_color1a,bg_amb_color2a,bg_amb_color3a = struct.unpack(">ffBBBBBBBB",data[offset:offset+16])
      offset += 16
      entry = {"Actor Ambient Color":actor_amb_color,"BG Ambient Colors":bg_amb_colors,
               "P Light Colors":p_light_colors,"Fog Color":fog_color,"Fog Start Z":fog_start_z,
               "Fog End Z":fog_end_z,"Virt Idx":virt_idx,"Terrain Light Influence":terrain_light_influence,
               "Cloud Shadow Density":cloud_shadow_density,"field_0x2f":_2f,"Bloom Table Idx":bloom_tbl_idx,
               "BG Ambient Color 1a":bg_amb_color1a,"BG Ambient Color 2a":bg_amb_color2a,
               "BG Ambient Color 3a":bg_amb_color3a}
      entries.append(entry)
      # print(f"Palette Entry {i}: {entry}")
   return entries

# struct stage_vrboxcol_info_class {
#     // VRB
# };  // Size: 0x18
def dStage_vrboxcolInfoInit(m_entrynum,m_offset,data):
   entries = []
   offset = m_offset
   for i in range(m_entrynum):
      dataTable = []
      for val in data[offset:offset+0x15]:
         dataTable.append(val)
      offset += 0x15
      entry = {"Bytes": dataTable}
      #print(f"vrboxcolinfo {i}: {entry}")
      entries.append(entry)
   return entries

def dStage_roomDrtgInfoInit():
   pass

# class dStage_Lbnk_dt_c {
# public:
#     /* 0x0 */ u8 field_0x0[0x2 - 0x0];
#     /* 0x2 */ u8 field_0x2;
# };
def dStage_lbnkInfoInit(m_entrynum,m_offset,data):
   #TODO: Check
   offset = m_offset
   entries = []
   for i in range(m_entrynum):
      _0,_1,_2 = struct.unpack(">BBB",data[offset:offset+3])
      entry = {"field_0x0":_0,"field_0x1":_1,"field_0x2":_2}
      #print(f"LBNK Entry {i}: {entry}")
      entries.append(entry)
      offset += 3
   return entries


# class stage_tresure_class {
# public:
#     /* 0x00 */ char mName[8];
#     /* 0x08 */ u8 field_0x8;
#     /* 0x09 */ u8 mTypeFlag;
#     /* 0x0A */ u8 field_0xa;  // part of flag
#     /* 0x0B */ u8 mAppearType;
#     /* 0x0C */ Vec mPosition;
#     /* 0x18 */ s16 mRoomNo;
#     /* 0x1A */ s16 mRotation;
#     /* 0x1C */ u8 mItem;
#     /* 0x1D */ u8 mFlagID;
# };  // Size: 0x20
def dStage_roomTresureInit(m_entrynum,m_offset,data):
   offset = m_offset
   entries = []
   for i in range(m_entrynum):
      name = str(data[offset:offset+8],"ascii").rstrip('\x00')
      _8,type_flag,_a,appear_type,x,y,z,room,rotation,item,flagId,_1e,_1f = struct.unpack(">BBBBfffhhBBBB",data[offset+8:offset+32])
      entry = {"Name":name,"field_0x8":_8,"Type Flag":type_flag,"field_0xa":_a,"Appear Type":appear_type,
               "Position X":x,"Position Y":y,"Position Z":z,"Room No.":room,
               "Rotation":rotation,"Item":item,"Flag ID":flagId,"field_0x1e":_1e,"field_0x1f":_1f}
      entries.append(entry)
      offset += 0x20
   return entries

# struct data_s {
#     /* 0x00 */ u8 mNo;
#     /* 0x01 */ s8 mRoomNo;
#     /* 0x02 */ u8 mStatus;
#     /* 0x03 */ u8 mArg1;
#     /* 0x04 */ Vec mPos;
#     /* 0x10 */ u8 mSwBit;
#     /* 0x11 */ u8 mType;
#     /* 0x12 */ u8 mArg2;
#     /* 0x13 */ s8 mAngleY;
# };
def dStage_stageKeepTresureInit(m_entrynum,m_offset,data):
   offset = m_offset
   entries = []
   for i in range(m_entrynum):
      num,roomNo,status,arg1,x,y,z,swBit,_type,arg2,angleY = struct.unpack(">BbBBfffBBBb",data[offset:offset+0x14])
      entry = {"Number":num,"Room Number":roomNo,"Status":status,
               "Argument 1":arg1,"Position X":x,"Position Y":y,"Position Z":z,
               "Sw Bit":swBit,"Type":_type,"Argument 2":arg2,"Angle Y":angleY}
      entries.append(entry)
      offset += 0x14
   return entries

# struct stage_stag_info_class {
#     /* 0x00 */ f32 field_0x0;
#     /* 0x04 */ f32 field_0x4;
#     /* 0x08 */ u8 mCameraType;
#     /* 0x09 */ u8 field_0x09;
#     /* 0x0A */ u16 field_0x0a;
#     /* 0x0C */ u32 field_0x0c;
#     /* 0x10 */ u32 field_0x10;
#     /* 0x14 */ u8 field_0x14[6];  // usually all 0xFF
#     /* 0x1A */ s16 mGapLevel;
#     /* 0x1C */ s16 mRangeUp;
#     /* 0x1E */ s16 mRangeDown;
#     /* 0x20 */ f32 field_0x20;
#     /* 0x24 */ f32 field_0x24;
#     /* 0x28 */ u8 mMsgGroup;
#     /* 0x2A */ u16 mStageTitleNo;
#     /* 0x2C */ u8 mParticleNo[16];
# }; // SIZE: 0x3C
def dStage_stagInfoInit(m_entrynum,m_offset,data):
   offset = m_offset
   entries = []
   for i in range(m_entrynum):
      _0,_4,camera_type,_9,_a,_c,_10 = struct.unpack(">ffBBHII",data[offset:offset+0x14])
      _14 = []
      for j in range(6):
         _14.append(data[offset+0x14+j])
      gap_level,range_up,range_down,_20,_24,msg_group,_29,stage_title_no = struct.unpack(">hhhffBBH",data[offset+0x1A:offset+0x2C])
      particle_no = []
      for j in range(16):
         particle_no.append(data[offset+0x2C+j])
      entry = {"field_0x0":_0,"field_0x4":_4,"Camera Type":camera_type,"field_0x9":_9,
               "field_0xa":_a,"field_0xc":_c,"field_0x10":_10,
               "field_0x14":_14,"Gap Level":gap_level,"Range Up":range_up,
               "Range Down":range_down,"field_0x20":_20,"field_0x24":_24,
               "Msg Group":msg_group,"field_0x29":_29,"Stage Title No":stage_title_no,
               "Particle No":particle_no}
      entries.append(entry)
      #print(f"STAGE Entry {i}: {entry}")
      offset += 0x3C
   return entries

def dStage_memaInfoInit(m_entrynum,m_offset,data):
   offset = m_offset
   entries = []
   for i in range(m_entrynum):
      entries.append(struct.unpack(">I",data[offset:offset+4])[0])
      offset += 4
   return entries

# struct dStage_MemoryConfig_data {
#     /* 0x0 */ u8 m_roomNo;
#     /* 0x1 */ u8 m_blockID;
# };  // Size: 0x2
def dStage_mecoInfoInit(m_entrynum,m_offset,data):
   offset = m_offset
   entries = []
   for i in range(m_entrynum):
      roomNo,blockId = struct.unpack(">BB",data[offset:offset+2])
      entry = {"Room Number":roomNo,"Block Id":blockId}
      entries.append(entry)
      offset += 2
   return entries

# struct line_class {
#         /* 0x00 */ u8 field_0x0;
#         /* 0x01 */ u8 field_0x1;
#         /* 0x02 */ u8 mDataNum; //Number of entries in mpData
#         /* 0x03 */ u8 field_0x3;
#         /* 0x04 */ u16* mpData;
#     };  // Size: 0x8
# struct poly_class {
#         /* 0x00 */ u8 field_0x0;
#         /* 0x01 */ u8 mDataNum; //Number of entries in mpData
#         /* 0x04 */ u16* mpData;
#     };  // Size: 0x8
# struct group_class {
#         /* 0x00 */ u8 field_0x0;
#         /* 0x01 */ u8 field_0x1;
#         /* 0x02 */ u8 mLineNum; //Number of Lines
#         /* 0x03 */ u8 field_0x3;
#         /* 0x04 */ u8 mPolyNum; //Number of Polygons
#         /* 0x08 */ dDrawPath_c::line_class* mpLine;
#         /* 0x0C */ u8 field_0xc[4];
#         /* 0x10 */ dDrawPath_c::poly_class* mpPoly;
#     };  // Size: 0x14
# struct floor_class {
#         /* 0x0 */ s8 mFloorNo; //Floor Index
#         /* 0x1 */ u8 mGroupNum; //Number of Groups
#         /* 0x4 */ dDrawPath_c::group_class* mpGroup;
#     };  // Size: 0x8
# struct room_class {
#      /* 0x0 */ u8 mFloorNum;
#      /* 0x4 */ dDrawPath_c::floor_class* mpFloor;
#      /* 0x8 */ f32* mpFloatData;  // vec2
# };
def dStage_mapPathInitCommonLayer(m_entrynum,m_offset,data):
   # Formatted In The Order: Main Struct, Floor Structs, Float Data, Group Structs, Line than Polygon, one after another, Then The Data inside of lines and polygons
   offset = m_offset
   entry = {}
   floor_entries,_1,xy_entries,floor_offset,floatData_offset = struct.unpack(">BBHII",data[offset:offset+12])
   entry["field_0x1"] = _1
   entry["Entry Num"] = m_entrynum
   floor_offset += offset
   floatData_offset += offset
   # print(f"Entry Numbers: {m_entrynum}")
   # print(f"Float Offset: {floatData_offset}")
   floatData = []
   for j in range(xy_entries):
      x,z = struct.unpack(">ff",data[floatData_offset:floatData_offset+8])
      # print(f"X:{x} Y:{y}")
      floatData.append({"x":x,"z":z})
      floatData_offset += 8
   entry["Vertices"] = floatData
   # print(f"Floor Offset: {floor_offset}")
   floors = []
   for j in range(floor_entries):
      floor_id,group_entries,_2,_3,group_offset = struct.unpack(">BBBBI",data[floor_offset:floor_offset+8])
      floor = {"Id": floor_id, "field_0x2":_2,"field_0x3":_3}
      group_offset += offset
      # print(f"  Group Offset: {group_offset}")
      # print(f"  Group Entries: {group_entries}")
      groups = []
      for k in range(group_entries):
         _0,_1,line_entries,_3,poly_entries,_5,_6,_7,line_offset,_c,_d,_e,_f,polygon_offset = struct.unpack(">BBBBBBBBIBBBBI",data[group_offset:group_offset+0x14])
         group = {"field_0x0":_0,"field_0x1":_1,"field_0x3":_3,
                  "field_0x5":_5,"field_0x6":_6,"field_0x7":_7,
                  "field_0xc":_c,"field_0xd":_d,"field_0xe":_e,
                  "field_0xf":_f}
         line_offset += offset
         polygon_offset += offset
         # print(f"    Line Offset: {line_offset}")
         lines = []
         for l in range(line_entries):
            _0,_1,data_entries,_3,data_offset = struct.unpack(">BBBBI",data[line_offset:line_offset+8])
            line = {"field_0x0":_0,"field_0x1":_1,"field_0x3":_3}
            data_offset += offset
            # print(f"      {l}: Data Offset: {data_offset}")
            # print(f"      {l}: Data Entries: {data_entries}")
            data_list = []
            for m in range(data_entries):
               data_list.append(struct.unpack(">H",data[data_offset+(m*2):data_offset+((m+1)*2)])[0])
            line["Vertex Indexes"] = data_list
            lines.append(line)
            line_offset += 8
         # print(f"    Polygon Offset: {polygon_offset}")
         polygons = []
         for l in range(poly_entries):
            _0,data_entries,_2,_3,data_offset = struct.unpack(">BBBBI",data[polygon_offset:polygon_offset+8])
            polygon = {"field_0x0":_0,"field_0x2":_2,"field_0x3":_3}
            data_offset += offset
            # print(f"      {l}: Data Offset: {data_offset}")
            # print(f"      {l}: Data Entries: {data_entries}")
            data_list = []
            for m in range(data_entries):
               data_list.append(struct.unpack(">H",data[data_offset+(m*2):data_offset+((m+1)*2)])[0])
            polygon["Vertex Indexes"] = data_list
            polygons.append(polygon)
            polygon_offset += 8
         group["Lines"] = lines
         group["Polygons"] = polygons
         groups.append(group)
         group_offset += 0x14
      floor["Groups"] = groups
      floors.append(floor)
      floor_offset += 8
   entry["Floors"] = floors
   return entry

decodeFuncTbl = {
   "STAG": dStage_stagInfoInit,

    "EVLY": dStage_elstInfoInit,
    "RPPN": dStage_rppnInfoInit,
    "RPAT": dStage_rpatInfoInit,     
    "MULT": dStage_multInfoInit,
    "PLYR": dStage_actorInit_always,       
    "CAMR": dStage_cameraInit,
    "RCAM": dStage_cameraInit,        
    "ACTR": dStage_actorInit_always,
    "TGOB": dStage_actorInit_always,  
    "RTBL": dStage_roomReadInit,
    "AROB": dStage_arrowInit,       
    "RARO": dStage_arrowInit,
    # "Virt": dStage_vrboxInfoInit,     
    "SCLS": dStage_sclsInfoInit,
    "TGSC": dStage_tgscInfoInit,      
    # "LGHT": dStage_plightInfoInit,
    "PPNT": dStage_rppnInfoInit,
    # "PATH": dStage_pathInfoInit,
    "SCOB": dStage_tgscInfoInit,
    "FILI": dStage_filiInfoInit,
    "Door": dStage_tgscInfoInit,
    # "FLOR": dStage_floorInfoInit,
    "TGDR": dStage_tgscInfoInit,      
    # "DMAP": dStage_dmapInfoInit,
    "REVT": dStage_stEventInfoInit,   
    "SOND": dStage_soundInfoInit,

#Layer Functions
   "SON0": dStage_soundInfoInit,
   "LGT0": dStage_lgtvInfoInit,
   "LGTV": dStage_lgtvInfoInit,
   "Env0": dStage_envrInfoInit,
   "Col0": dStage_pselectInfoInit, 
   "PAL0": dStage_paletteInfoInit,
   "VRB0": dStage_vrboxcolInfoInit,
   "Doo0": dStage_tgscInfoInit,
   "SCO0": dStage_tgscInfoInit,
   "ACT0": dStage_actorInit_always,
   "TRE0": dStage_actorInit_always,

#Room Functions
   "LBNK": dStage_lbnkInfoInit,
   "TRES": dStage_roomTresureInit,

   "MEM0": dStage_memaInfoInit,
   "MEC0": dStage_mecoInfoInit,

   "MPAT": dStage_mapPathInitCommonLayer,
   "MPA0": dStage_mapPathInitCommonLayer
}

def packageSTAG(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">ffBBHII",e["field_0x0"],e["field_0x4"],e["Camera Type"],e["field_0x9"],e["field_0xa"],e["field_0xc"],e["field_0x10"])
      for i in e["field_0x14"]:
         data.append(i)
      data += struct.pack(">hhhffBBH",e["Gap Level"],e["Range Up"],e["Range Down"],e["field_0x20"],e["field_0x24"],e["Msg Group"],e["field_0x29"],e["Stage Title No"])
      for i in e["Particle No"]:
         data.append(i)
   return data

def packageRTBL(entries,offset):
   enddata = bytearray()
   middledata = bytearray()
   data = bytearray()
   middle_offset = offset+(4*len(entries))
   end_offset = middle_offset+(len(entries)*8)
   for i,e in enumerate(entries):
      data += struct.pack(">I",middle_offset+(i*8))
      middledata += struct.pack(">BBBBI",len(e["Table"]),e["field_0x1"],e["field_0x2"],0,end_offset+len(enddata))
      for b in e["Table"]:
         enddata.append(b)
   data += middledata + enddata
   return data

def packageMULT(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">ffhBB",e["x"],e["y"],e["Angle"],e["roomNo"],e["field_0xb"])
   return data

def packageCAM(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">16sBBBBHH",bytes(e["Camera Type"],"ascii"),e["field_0x10"],e["field_0x11"],e["field_0x12"],e["field_0x13"],e["field_0x14"],e["field_0x16"])
   return data

def packageRARO(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">fffhhhBB",e["x"],e["y"],e["z"],e["Angle X"],e["Angle Y"],e["Angle Z"],e["field_0x12"],e["field_0x13"])
   return data

def packageEVLY(entries,offset):
   data = bytearray()
   for e in entries:
      for v in e["layerTable"]:
         data.append(v)
   return data

def packageVRB(entries,offset):
   data = bytearray()
   for e in entries:
      for v in e["Bytes"]:
         data.append(v)
   return data

def packageEnv(entries,offset):
   data = bytearray()
   for e in entries:
      for v in e["Pselect ID Table"]:
         data.append(v)
   return data

def packageCol(entries,offset):
   data = bytearray()
   for e in entries:
      for v in e["Palette Ids"]:
         data.append(v)
      data += struct.pack(">f",e["Change Rate"])
   return data

def packRGB(arr):
   return struct.pack(">BBB",arr[0],arr[1],arr[2])

def packagePAL(entries,offset):
   data = bytearray()
   for e in entries:
      data += packRGB(e["Actor Ambient Color"])
      for col in e["BG Ambient Colors"]:
         data += packRGB(col)
      for col in e["P Light Colors"]:
         data += packRGB(col)
      data += packRGB(e["Fog Color"])
      data += struct.pack(">ffBBBBBBBB",e["Fog Start Z"],e["Fog End Z"],e["Virt Idx"],e["Terrain Light Influence"],e["Cloud Shadow Density"],e["field_0x2f"],e["Bloom Table Idx"],e["BG Ambient Color 1a"],e["BG Ambient Color 2a"],e["BG Ambient Color 3a"])
      
   return data

def packageFILI(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">Ifff",e["Parameters"],e["Sea Level"],e["field_0x8"],e["field_0xc"])
      for i in e["field_0x10"]:
         data.append(i)
      data += struct.pack(">BBH",e["Default Camera"],e["Bit Sw"],e["Msg"])
   return data
def packageFILI2(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">ffffBBBBffh",e["Left Room X"],e["Inner Room Z"],e["Right Room X"],e["Front Room Z"],e["Min Floor No."],e["Max Floor No."],e["field_0x12"],e["field_0x13"],e["field_0x14"],e["field_0x18"],e["field_0x1c"])
   return data

def packageSCLS(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">8sBbBBb",bytes(e["Stage"],"ascii"),e["Start"],e["Room"],e["field_0xa"],e["field_0xb"],e["Wipe"])
   return data

def packageLBNK(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">BBB",e["field_0x0"],e["field_0x1"],e["field_0x2"])
   return data

def packageREVT(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">BBBBBBBBBBBBB",e["Type"],e["field_0x1"],e["field_0x2"],e["field_0x3"],e["field_0x4"],e["field_0x5"],e["Priority"], e["field_0x7"],e["field_0x8"],e["field_0x9"],e["field_0xa"],e["field_0xb"],e["field_0xc"])
      if isinstance(e["Name"],str):
         data += struct.pack(">11s",bytes(e["Name"],"ascii"))
      else:
         for i in e["Name"]:
            data.append(i)
      data += struct.pack(">BBBB",e["seType"],e["field_0x1a"],e["field_0x1b"],e["switch"])
   return data

def packageACTR(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">8sIfffhhhh",bytes(e["Name"],"ascii"),e["param"],e["x"],e["y"],e["z"],e["Angle X"],e["Angle Y"],e["Angle Z"],e["EnemyNo"])
   return data

def packageLGT(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">fffffffBBBB",e["x"],e["y"],e["z"],e["Radius"],e["Direction X"],e["Direction Y"],e["Spotlight Cutoff"],e["field_0x1c"],e["field_0x1d"],e["field_0x1e"],e["field_0x1f"])
      
   return data

def packageTRES(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">8sBBBBfffhhBBBB",bytes(e["Name"],"ascii"),e["field_0x8"],e["Type Flag"],e["field_0xa"],e["Appear Type"],e["Position X"],e["Position Y"],e["Position Z"],e["Room No."],e["Rotation"],e["Item"],e["Flag ID"],e["field_0x1e"],e["field_0x1f"])
   return data

def packageRPAT(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">HhBBHI",e["Number of Points"],e["Path Index"],e["field_0x4"],e["Looped"],e["field_0x6"],e["RPPN Entry Index"]*0x10)
   return data
   
def packageRPPN(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">BBBBfff",e["field_0x0"],e["field_0x1"],e["field_0x2"],e["field_0x3"],e["Position X"],e["Position Y"],e["Position Z"])
   return data

def packageTGSC(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">8sIfffhhhhBBBB",bytes(e["Name"],"ascii"),e["param"],e["x"],e["y"],e["z"],e["Angle X"],e["Angle Y"],e["Angle Z"],e["EnemyNo"],e["Scale X"],e["Scale Y"],e["Scale Z"],e["field_0x23"])
   return data

def packageStageTRES(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">BbBBfffBBBb",e["Number"],e["Room Number"],e["Status"],e["Argument 1"],e["Position X"],e["Position Y"],e["Position Z"],e["Sw Bit"],e["Type"],e["Argument 2"],e["Angle Y"])
   return data


def packageMPAT(entry,offset):
   data = bytearray()
   o = 12+(len(entry["Floors"])*8)
   data += struct.pack(">BBHII",len(entry["Floors"]),entry["field_0x1"],len(entry["Vertices"]),12,o)
   o += 8*len(entry["Vertices"])
   group_length = 0
   poly_line_length = 0
   for floor in entry["Floors"]:
      for g in floor["Groups"]:
         group_length += 1
         poly_line_length += len(g["Lines"]) + len(g["Polygons"])
   poly_line_offset = o + (group_length * 20)
   index_data_offset = poly_line_offset + (poly_line_length * 8)

   float_data = bytearray()
   for vertex in entry["Vertices"]:
      float_data += struct.pack(">ff",vertex["x"],vertex["z"])
   group_data = bytearray()
   line_poly_data = bytearray()
   index_data = bytearray()

   for floor in entry["Floors"]:
      data += struct.pack(">BBBBI",floor["Id"],len(floor["Groups"]),floor["field_0x2"],floor["field_0x3"],o+len(group_data))
      for g in floor["Groups"]:
         line_offset = poly_line_offset + len(line_poly_data)
         poly_offset = line_offset + (len(g["Lines"])*8)
         group_data += struct.pack(">BBBBBBBBIBBBBI",g["field_0x0"],g["field_0x1"],len(g["Lines"]),g["field_0x3"],len(g["Polygons"]),g["field_0x5"],g["field_0x6"],g["field_0x7"],line_offset,g["field_0xc"],g["field_0xd"],g["field_0xe"],g["field_0xf"],poly_offset)
         for l in g["Lines"]:
            line_poly_data += struct.pack(">BBBBI",l["field_0x0"],l["field_0x1"],len(l["Vertex Indexes"]),l["field_0x3"],index_data_offset+len(index_data))
            for i in l["Vertex Indexes"]:
               index_data += struct.pack(">H",i)
         for p in g["Polygons"]:
            line_poly_data += struct.pack(">BBBBI",p["field_0x0"],len(p["Vertex Indexes"]),p["field_0x2"],p["field_0x3"],index_data_offset+len(index_data))
            for i in p["Vertex Indexes"]:
               index_data += struct.pack(">H",i)
   return data+float_data+group_data+line_poly_data+index_data

def packageSOND(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">8sfffBBBBBBBB",bytes(e["Name"],"ascii"),e["x"],e["y"],e["z"],e["field_0x14"],e["field_0x15"],e["field_0x16"],e["field_0x17"],e["field_0x18"],e["field_0x19"],e["field_0x1a"],e["field_0x1b"])
   return data

def packageMECO(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">BB",e["Room Number"],e["Block Id"])
   return data

def packageMEMO(entries,offset):
   data = bytearray()
   for e in entries:
      data += struct.pack(">I",e)
   return data

def extract(data,roomStage,roomFile):

   chunkCount = struct.unpack(">I",data[:4])[0]

   offset = 4

   chunk_table = []

   # struct dStage_nodeHeader {
   #     /* 0x0 */ u32 m_tag;
   #     /* 0x4 */ int m_entryNum;
   #     /* 0x8 */ u32 m_offset;
   # };
   tbl = dict(decodeFuncTbl)
   if roomStage:
      tbl["FILI"] = dStage_filiInfo2Init
      tbl["TRES"] = dStage_stageKeepTresureInit
      tbl["TRE0"] = dStage_stageKeepTresureInit

   for i in range(chunkCount):
      m_entrynum,m_offset = struct.unpack(">iI",data[offset+4:offset+12])
      tag = str(data[offset:offset+4],"ascii").rstrip('\x00')
      offset += 12
      real_tag = tag #Used for writing correct layer tags
      # print(f"{real_tag}:{m_offset}")
      if not tag in tbl:
         if tag[-1] in ['0','1','2','3','4','5','6','7','8','9','a','b','c','d','e']:
            real_tag = tag
            tag = tag[:-1]+'0'
            if not tag in tbl:
               print(f"Unkown layer tag: {real_tag}")
               continue
         else:
            print(f"Unkown tag: {tag}")
            continue
      entries = tbl[tag](m_entrynum,m_offset,data)
      chunk_table.append({"Tag":real_tag,"Offset":m_offset,"Entries":entries})

   # Here, we sort the entries by their original offsets, so we can rebuild their data in the correct order
   chunk_table.sort(key=lambda x: x["Offset"])
   for chunk in chunk_table:
      del chunk["Offset"]

   
   return json.dumps(chunk_table,indent=2)

encodeFuncTbl = {
   "STAG": packageSTAG,
   "RTBL": packageRTBL,
   "MULT": packageMULT,
   "RCAM": packageCAM,
   "RARO": packageRARO,
   "AROB": packageRARO,
   "EVLY": packageEVLY,
   "VRB0": packageVRB,
   "Env0": packageEnv,
   "Col0": packageCol,
   "PAL0": packagePAL,

   "SCLS": packageSCLS,
   "FILI": packageFILI,
   "LBNK": packageLBNK,
   "REVT": packageREVT,
   "PLYR": packageACTR,
   "ACTR": packageACTR,
   "TGOB": packageACTR,  
   "TRES": packageTRES,
   "ACT0": packageACTR,
   "TRE0": packageACTR,
   "LGT0": packageLGT,
   "LGTV": packageLGT,

   "RPAT": packageRPAT,
   "RPPN": packageRPPN,

   "SCOB": packageTGSC,
   "TGSC": packageTGSC,
   "TGDR": packageTGSC,
   "SCO0": packageTGSC,

   "MPAT": packageMPAT,
   "MPA0": packageMPAT,

   "SOND": packageSOND,
   "SON0": packageSOND,

   "MEC0": packageMECO,
   "MEM0": packageMEMO,

   "Door": packageTGSC,
   "Doo0": packageTGSC,
}

package_order = [
   "STAG",
   "RTBL",
   "SCLS",
   "REVT",
   "MULT",
   "FILI",
   "LBNK",
   "RPAT",
   "RPPN",

   "RCAM",
   "RARO",
   "EVLY",



   "PLYR",
   "ACTR",
   "SCOB",
   "SOND",
   "LGTV",
   "TRES",
   "MPAT",
   "Door",
]

layer_order = [
   "ACT",
   "SCO",
   "SON",
   "MEC",
   "MEM",
   "LGT",
   "MPA",
   "VRB",
   "Env",
   "Col",
   "PAL",
   "Doo",
   "TRE",
]

#PACKAGE
def package(chunk_table,roomStage,roomFile):

   tbl = dict(encodeFuncTbl)
   if roomStage:
      tbl["FILI"] = packageFILI2
      tbl["TRES"] = packageStageTRES
      tbl["TRE0"] = packageStageTRES

   data = bytearray()
   header_table = []
   header_size = 4+(len(chunk_table)*12)
   for chunk in chunk_table:
      tag = chunk["Tag"]
      real_tag = tag
      if not tag in tbl:
         if tag[-1] in ['0','1','2','3','4','5','6','7','8','9','a','b','c','d','e']:
            real_tag = tag
            tag = tag[:-1]+'0'
            if not tag in tbl:
               print(f"Unkown layer tag: {real_tag}")
               continue
         else:
            print(f"Unkown tag: {tag}")
            continue
      offset = header_size+len(data)
      # print(f"{real_tag}:{offset}")
      num_entries = 0
      if isinstance(chunk["Entries"],dict):
         num_entries = chunk["Entries"]["Entry Num"]
      else:
         num_entries = len(chunk["Entries"])
      header_data = {"Tag":real_tag,"Offset":offset,"Entries":num_entries}
      data += tbl[tag](chunk["Entries"],offset)
      if len(data)%4 != 0:
         data += bytearray([0xFF]*(4-(len(data)%4)))
      header_table.append(header_data)

   order = []
   order += package_order
   for i in range(15):
      for j in layer_order:
         order.append(j+(f"{i:x}"))
   tag_to_index = {tag:index for index, tag in enumerate(order)}
   header_table.sort(key=lambda item: tag_to_index[item["Tag"]])
   header_data = bytearray()
   header_data += struct.pack(">I",len(header_table))
   for item in header_table:
      # print(f"{item['Tag']}:{item['Offset']}")
      t = item["Tag"]
      header_data += struct.pack(">BBBBiI",ord(t[0]),ord(t[1]),ord(t[2]),ord(t[3]),item["Entries"],item["Offset"])
   
   data = header_data + data
   if roomFile:
      data += struct.pack(">IIIIIIII",0,0x10,0x10,0x10,0,0x10,0x10,0x10)
   if len(data) % 0x20 != 0:
      data += bytearray([0xFF]*(0x20-(len(data)%0x20)))

   return data

   # To package, we first must write the entry data in the order
   # given by the JSON, then we write Chunk data in the correct order, pointing
   # to the right data.

def extract_to_json(name,data,writeFunc):
   name = str(name)
   roomFile = name.rfind(".dzr") != -1
   roomStage = False
   if not roomFile:
      roomStage = name.find("room") != -1
   print(f"Converting {name} to {name+'.json'}")
   out = extract(data,roomStage,roomFile)
   writeFunc(name+".json",bytes(out,"ascii"))
   return name+".json"

def package_from_json(name,convertFunc):
   name = str(name)
   roomFile = name.rfind(".dzr") != -1
   roomStage = False
   if not roomFile:
      roomStage = name.find("room") != -1
   data = None
   with open(name,"r") as f:
      data = json.loads(f.read())
   out = package(data,roomStage,roomFile)
   return out

def main():
   if len(argv) < 3:
      print("Usage: 'python3 libstage.py input.dzs output.json' or 'python3 libstage.py input.json output.dzs'")
   if argv[1] == "test":
      testFiles = argv[2:]
      for file in testFiles:
         room_file = file.rfind(".dzr") != -1
         room_stage = False
         if not room_file:
            room_stage = file.find("room") != -1
         data = None
         with open(file,"rb") as f:
            data = f.read()
         print(f"Testing {file}")
         out = ""
         data2 = bytearray()
         try:
            print("  Extract:")
            out = extract(data,room_stage,room_file)
            print("  Package:")
            data2 = package(json.loads(out),room_stage,room_file)
            if data != data2:
               print("Diff Found")
               raise Exception
         except Exception:
            print("Dumping")
            ext = ".dzs" if not room_file else ".dzr"
            with open("in"+ext,"wb") as f:
               f.write(data)
            with open("out.json","w") as f:
               f.write(out)
            with open("out"+ext,"wb") as f:
               f.write(data2)
            print(traceback.format_exc())
            return
      print("Done!")
   elif argv[2].rfind(".json") == -1:
      chunk_table = None
      with open(argv[1],"r") as f:
         chunk_table = json.load(f)
      out = None
      if argv[2].rfind(".dzr") != -1:
         out = package(chunk_table,False,True)
      else:
         if argv[2].find("room") != -1:
            out = package(chunk_table,True,False)
         else:
            out = package(chunk_table,False,False)
      with open(argv[2],"wb") as f:
         f.write(out)
   else:
      data = None
      with open(argv[1],"rb") as f:
         data = f.read()
      out = None
      if argv[1].rfind(".dzr") != -1:
         out = extract(data,False,True)
      else:
         if argv[2].find("room") != -1:
            out = extract(data,True,False)
         else:
            out = extract(data,False,False)
      with open(argv[2],"w") as f:
         f.write(out)

if __name__ == "__main__":
   main()
