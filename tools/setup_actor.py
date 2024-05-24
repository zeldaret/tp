import os, sys, click
from setup_profile import *

# dictionary of known weakly linked functions to be replaced to avoid symbol oollision
weak_funcs = {
    "asm J3DFrameCtrl::~J3DFrameCtrl()": "__dt__12J3DFrameCtrlFv",
    "asm dBgS_ObjAcch::~dBgS_ObjAcch()": "__dt__12dBgS_ObjAcchFv",
    "asm dBgS_AcchCir::~dBgS_AcchCir()": "__dt__12dBgS_AcchCirFv",
    "asm cM3dGSph::~cM3dGSph()": "__dt__8cM3dGSphFv",
    "asm cM3dGAab::~cM3dGAab()": "__dt__8cM3dGAabFv",
    "asm dBgS_ObjGndChk::~dBgS_ObjGndChk()": "__dt__14dBgS_ObjGndChkFv",
    "asm cXyz::~cXyz()": "__dt__4cXyzFv",
    "csXyz::csXyz()": "__ct__5csXyzFv",
    "asm csXyz::~csXyz()": "__dt__5csXyzFv",
    "asm dCcD_GStts::~dCcD_GStts()": "__dt__10dCcD_GSttsFv",
    "asm cCcD_GStts::~cCcD_GStts()": "__dt__10cCcD_GSttsFv",
    "asm cM3dGPla::~cM3dGPla()": "__dt__8cM3dGPlaFv",
    "asm dCcD_Sph::~dCcD_Sph()": "__dt__8dCcD_SphFv",
    "asm dCcD_Sph::dCcD_Sph()": "__ct__8dCcD_SphFv",
    "asm dKy_tevstr_c::~dKy_tevstr_c()": "__dt__12dKy_tevstr_cFv",
    "asm dKy_tevstr_c::dKy_tevstr_c()": "__ct__12dKy_tevstr_cFv",
    "asm J3DLightObj::J3DLightObj()": "__ct__11J3DLightObjFv",
    "asm void daPy_py_c::changeDemoPos0(cXyz const* param_0)": "changeDemoPos0__9daPy_py_cFPC4cXyz",
    "asm void daPy_py_c::changeDemoMode(u32 param_0, int param_1, int param_2, s16 param_3)": "changeDemoMode__9daPy_py_cFUliis",
    "asm void daPy_py_c::changeOriginalDemo()": "changeOriginalDemo__9daPy_py_cFv",
    "asm void obj_ystone_class::setCurrentPos(cXyz param_0)": "setCurrentPos__16obj_ystone_classF4cXyz",
    "asm dPa_followEcallBack::~dPa_followEcallBack()": "__dt__19dPa_followEcallBackFv",
    "void dPa_levelEcallBack::cleanup()": "cleanup__18dPa_levelEcallBackFv",
    "asm void dPa_followEcallBack::__defctor()": "__defctor__19dPa_followEcallBackFv",
    "asm dPa_levelEcallBack::~dPa_levelEcallBack()": "__dt__18dPa_levelEcallBackFv",
    "asm void daKey_c::setPos(cXyz param_0)": "setPos__7daKey_cF4cXyz",
    "asm void daPy_py_c::checkNowWolf()": "checkNowWolf__9daPy_py_cFv",
    "asm cM3dGCyl::~cM3dGCyl()": "__dt__8cM3dGCylFv",
    "cXyz::cXyz()": "__ct__4cXyzFv",
    "asm fOpAcm_HIO_entry_c::~fOpAcm_HIO_entry_c()": "__dt__18fOpAcm_HIO_entry_cFv",
    "asm mDoHIO_entry_c::~mDoHIO_entry_c()": "__dt__14mDoHIO_entry_cFv",
    "static asm void fopAcM_isSwitch(fopAc_ac_c const* param_0, int param_1)": "fopAcM_isSwitch__FPC10fopAc_ac_ci",
    "static asm void fopAcM_GetID(void const* param_0)": "fopAcM_GetID__FPCv",
    "void fopAcM_SetGroup(fopAc_ac_c* param_0, u8 param_1)": "fopAcM_SetGroup__FP10fopAc_ac_cUc",
    "asm void daPy_py_c::cancelOriginalDemo()": "cancelOriginalDemo__9daPy_py_cFv",
    "asm void mDoExt_morf_c::getFrame()": "getFrame__13mDoExt_morf_cFv",
    "asm void mDoExt_morf_c::isStop()": "isStop__13mDoExt_morf_cFv",
    "static asm void cM_scos(s16 param_0)": "cM_scos__Fs",
    "static asm void cM_ssin(s16 param_0)": "cM_ssin__Fs",
    "asm void dCamera_c::Fovy()": "Fovy__9dCamera_cFv",
    "static asm void fopAcM_searchPlayerAngleY(fopAc_ac_c const* param_0)": "fopAcM_searchPlayerAngleY__FPC10fopAc_ac_c",
    "asm void dEvt_info_c::checkCommandDemoAccrpt()": "checkCommandDemoAccrpt__11dEvt_info_cFv",
    "static asm void dComIfGp_getPlayer(int param_0) ": "dComIfGp_getPlayer__Fi",
    "static asm void fopAcM_onSwitch(fopAc_ac_c const* param_0, int param_1)": "fopAcM_onSwitch__FPC10fopAc_ac_ci",
    "static asm void fopAcM_offSwitch(fopAc_ac_c const* param_0, int param_1)": "fopAcM_offSwitch__FPC10fopAc_ac_ci",
    "void JPAEmitterCallBack::execute(JPABaseEmitter* param_0)": "execute__18JPAEmitterCallBackFP14JPABaseEmitter",
    "void JPAEmitterCallBack::executeAfter(JPABaseEmitter* param_0)": "executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter",
    "void JPAEmitterCallBack::draw(JPABaseEmitter* param_0)": "draw__18JPAEmitterCallBackFP14JPABaseEmitter",
    "void JPAEmitterCallBack::drawAfter(JPABaseEmitter* param_0)": "drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter",
    "asm void dEvt_control_c::checkSkipEdge()": "checkSkipEdge__14dEvt_control_cFv",
    "void daPy_py_c::changeDemoMoveAngle(s16 param_0)": "changeDemoMoveAngle__9daPy_py_cFs",
    "asm void cXyz::zero()": "zero__4cXyzFv",
    "asm void cXyz::abs() const": "abs__4cXyzCFv",
    "asm void mDoExt_morf_c::setFrame(f32 param_0)": "setFrame__13mDoExt_morf_cFf",
    "asm void cXyz::set(Vec const& param_0)": "set__4cXyzFRC3Vec",
    "asm void cXyz::set(f32 param_0, f32 param_1, f32 param_2)": "set__4cXyzFfff",
    "asm void cXyz::operator=(cXyz const& param_0)": "__as__4cXyzFRC4cXyz",
    "asm cXyz::cXyz(cXyz const& param_0)": "__ct__4cXyzFRC4cXyz",
    "asm cXyz::cXyz(f32 param_0, f32 param_1, f32 param_2)": "__ct__4cXyzFfff",
    "asm void daPy_py_c::getHeadTopPos() const": "getHeadTopPos__9daPy_py_cCFv",
    "asm void dCcD_Cyl::operator=(dCcD_Cyl const& param_0)": "__as__8dCcD_CylFRC8dCcD_Cyl",
    "asm void dCcD_GObjInf::operator=(dCcD_GObjInf const& param_0)": "__as__12dCcD_GObjInfFRC12dCcD_GObjInf",
    "asm dCcD_Cyl::~dCcD_Cyl()": "__dt__8dCcD_CylFv",
    "asm dCcD_Cyl::dCcD_Cyl()": "__ct__8dCcD_CylFv",
    "asm dBgS_ObjAcch::dBgS_ObjAcch()": "__ct__12dBgS_ObjAcchFv",
    "asm void daTag_FWall_c::getPos(u8 param_0)": "getPos__13daTag_FWall_cFUc",
    "asm void daB_DS_c::getHandPosR()": "getHandPosR__8daB_DS_cFv",
    "asm void daB_DS_c::getHandPosL()": "getHandPosL__8daB_DS_cFv"
}

# list of known external references to be replaced to avoid symbol collision
external_refs = [
    "extern \"C\" void PSMTXCopy();",
    "extern \"C\" void PSMTXMultVec();",
    "extern \"C\" extern void* g_fopAc_Method[8];",
    "extern \"C\" extern void* g_fpcLf_Method[5 + 1 /* padding */];",
    "extern \"C\" extern u8 g_env_light[4880];"
    "extern \"C\" void PSMTXTrans();",
    "extern \"C\" void PSVECSquareMag();",
    "extern \"C\" void PSVECSquareDistance();",
    "extern \"C\" void abs();",
    "extern \"C\" extern u8 j3dSys[284];",
    "extern \"C\" void PSMTXTrans();",
    "extern \"C\" extern u8 g_env_light[4880];",
    "extern \"C\" extern u32 __float_nan;",
    "extern \"C\" void PSVECAdd();",
    "extern \"C\" void strcmp();",
    "extern \"C\" void PSVECSubtract();",
    "extern \"C\" extern u8 const j3dDefaultLightInfo[52];",
    "extern \"C\" extern void* calc_mtx[1 + 1 /* padding */];",
    "extern \"C\" void PSVECScale();",
    "extern \"C\" extern u8 g_dComIfG_gameInfo[122384];",
    "extern \"C\" void PSMTXScale();",
    "extern \"C\" void PSMTXInverse();",
    "extern \"C\" extern u8 mStayNo__20dStage_roomControl_c[4];"
]

# list of known types to be removed
types = [
    "struct request_of_phase_process_class",
    "struct mDoMtx_stack_c",
    "struct J3DAnmTevRegKey",
    "struct J3DMaterialTable",
    "struct mDoExt_brkAnm",
    "struct mDoExt_baseAnm",
    "struct mDoExt_McaMorfCallBack2_c",
    "struct mDoExt_McaMorfCallBack1_c",
    "struct J3DAnmTransform",
    "struct J3DModelData",
    "struct Z2Creature",
    "struct mDoExt_McaMorfSO",
    "struct fopEn_enemy_c",
    "struct fopAc_ac_c",
    "struct daPy_py_c",
    "struct dVibration_c",
    "struct dSv_info_c",
    "struct dKy_tevstr_c",
    "struct dScnKy_env_light_c",
    "struct dRes_info_c",
    "struct dRes_control_c",
    "struct dPa_levelEcallBack",
    "struct csXyz",
    "struct _GXColor",
    "struct dPa_control_c",
    "struct dDlst_shadowControl_c",
    "struct dBgS_PolyPassChk",
    "struct dBgS_ObjAcch",
    "struct dBgS_LinChk",
    "struct dBgS_AcchCir",
    "struct dBgS",
    "struct dBgS_Acch",
    "struct cM3dGCir",
    "struct cCcS",
    "struct cBgS_PolyInfo",
    "struct cBgS_LinChk",
    "struct cBgS",
    "struct _GXTexObj",
    "struct Z2CreatureEnemy",
    "struct JMath",
    "struct J3DModel",
    "struct J3DFrameCtrl",
    "struct Vec",
    "struct JGeometry",
    "struct J3DSys",
    "struct dCcU_AtInfo",
    "struct dCcD_Stts",
    "struct dCcD_SrcSph",
    "struct dCcD_Sph",
    "struct dCcD_GStts",
    "struct dCcD_GObjInf",
    "struct dAttention_c",
    "struct cM3dGSph",
    "struct cM3dGAab",
    "struct cCcD_Obj",
    "struct TVec3__template0",
    "struct J3DJoint",
    "struct cXyz",
    "struct fopAcM_gc_c",
    "struct dSv_memBit_c",
    "struct mDoExt_McaMorf",
    "struct Z2SoundObjSimple",
    "struct JAISoundID",
    "struct dComIfG_play_c",
    "struct Z2SoundObjBeeGroup",
    "struct Z2SoundObjBase",
    "struct mDoExt_3DlineMat_c",
    "struct mDoExt_3DlineMatSortPacket",
    "struct ResTIMG",
    "struct JPABaseEmitter",
    "struct mDoExt_3DlineMat1_c",
    "struct dEvt_control_c",
    "struct dCamera_c",
    "struct J3DAnmTextureSRTKey",
    "struct mDoExt_btkAnm",
    "struct cM3dGPla",
    "struct cBgD_Vtx_t",
    "struct cCcD_GStts",
    "struct dJntColData_c",
    "struct dJntCol_c",
    "struct dBomb_c",
    "struct Z2SeqMgr",
    "struct Z2SeMgr",
    "struct Z2AudioMgr",
    "struct mDoGph_gInf_c",
    "struct camera_class",
    "struct cCcD_Stts",
    "struct cSAngle",
    "struct mDoExt_invisibleModel",
    "struct dCcD_GAtTgCoCommonBase",
    "struct daObjHHASHI_c",
    "struct dSv_event_flag_c",
    "struct dSv_event_c",
    "struct LIGHT_INFLUENCE",
    "struct J3DLightObj",
    "struct J3DLightInfo",
    "struct obj_ystone_class",
    "struct daItemBase_c",
    "struct dTres_c",
    "struct dPa_followEcallBack",
    "struct dItem_data",
    "struct dEvent_manager_c",
    "struct JPAEmitterCallBack",
    "struct daKey_c",
    "struct mDoCPd_c",
    "struct dMsgObject_c",
    "struct dMsgFlow_c",
    "struct dCcD_SrcCyl",
    "struct dCcD_Cyl",
    "struct cM3dGCyl",
    "struct dBgW_Base",
    "struct dBgW",
    "struct cBgD_t",
    "struct cBgW",
    "struct daObjCarry_c",
    "struct dSv_danBit_c",
    "struct J3DAnmTexPattern",
    "struct mDoExt_btpAnm",
    "struct fOpAcm_HIO_entry_c",
    "struct mDoHIO_entry_c",
    "struct dAttLook_c",
    "struct dPath",
    "struct mDoExt_morf_c",
    "struct dPa_hermiteEcallBack_c",
    "struct dEvt_info_c",
    "struct dAttList_c",
    "struct dSv_event_tmp_flag_c",
    "struct daObjH_Saku_c",
    "struct Z2StatusMgr",
    "struct mDoExt_3DlineMat0_c",
    "struct dSv_player_get_item_c",
    "struct dAttCatch_c",
    "struct fopAcM_wt_c",
    "struct daObjCRVSTEEL_c",
    "struct daObjCRVGATE_c",
    "struct daTag_FWall_c",
    "struct fopAcM_rc_c",
    "struct daB_DS_c"
]

class ActorSetupManager:
    def __init__(self,filename) -> None:
        self.filename = filename
        self.actor_name = None
        self.actor_class_type = None
        self.include_headers = []
        with open(filename, "r") as f:
            self.lines = f.readlines()

    def remove_types(self):
        new_lines = []
        removed_types = 0
        skip_until_closing_bracket = False

        skip_next_line = False
        for line in self.lines:
            if any(type in line for type in types):
                if "dCamera_c" in line:
                    self.include_headers.append("d/d_camera.h")
                if "daKey_c" in line:
                    self.include_headers.append("rel/d/a/obj/d_a_obj_smallkey/d_a_obj_smallkey.h")
                if "obj_ystone_class" in line:
                    self.include_headers.append("rel/d/a/obj/d_a_obj_ystone/d_a_obj_ystone.h")
                if "daB_DS_c" in line:
                    self.include_headers.append("rel/d/a/b/d_a_b_ds/d_a_b_ds.h")
                # if "JPAEmitterCallBack" in line:
                #     self.include_headers.append("JSystem/JPArticle/JPAEmitter.h")
                if "daObjCarry_c" in line:
                    self.include_headers.append("rel/d/a/obj/d_a_obj_carry/d_a_obj_carry.h")
                removed_types += 1
                skip_until_closing_bracket = True
            
            if skip_until_closing_bracket:
                if line.startswith("};") or "{};" in line:
                    skip_until_closing_bracket = False
                    skip_next_line = True

                continue
            
            if skip_next_line:
                skip_next_line = False
                continue
            else:
                new_lines.append(line)

        print(f"Removed {removed_types} type definitions." if removed_types > 0 else "No type definitions to remove!")
        self.lines = new_lines

    def remove_external_refs(self):
        new_lines = []
        removed_external_refs = 0

        for line in self.lines:
            if any(ref in line for ref in external_refs):
                # leave calc_mtx in unless d_camera was included
                if "extern \"C\" extern void* calc_mtx[1 + 1 /* padding */];" in line and not any("d/d_camera.h" in header for header in self.include_headers):
                    new_lines.append(line)
                    continue
                # leave gameInfo in unless d_a_obj_carry was included
                if "extern \"C\" extern u8 g_dComIfG_gameInfo[122384];" in line and not any("d/a/obj/d_a_obj_carry/d_a_obj_carry.h" in header for header in self.include_headers):
                    new_lines.append(line)
                    continue
                removed_external_refs += 1
            else:
                new_lines.append(line)

        print(f"Removed {removed_external_refs} external references." if removed_external_refs > 0 else "No external references to remove!")
        self.lines = new_lines

    def replace_weak_function_defs(self):
        new_lines = []
        updated_funcs = 0

        for line in self.lines:
            for old_symbol, new_symbol in weak_funcs.items():
                if line.startswith(old_symbol):
                    updated_funcs += 1
                    new_lines.append("// " + line)
                    new_line = "extern \"C\" asm void " + new_symbol + "() {\n"
                    new_lines.append(new_line)
                    break
            else:
                new_lines.append(line)

        print(f"Replaced {updated_funcs} weak function definitions." if updated_funcs > 0 else "No weak function definitions to replace!")
        self.lines = new_lines

    def move_remaining_types(self):
        self.header_path = "include/"+self.filename.replace(".cpp", ".h")
        if not os.path.exists(self.header_path):
            print("No header file found to move remaining types to!")
            sys.exit(1)

        inside_struct_or_class = False
        migrated_types = 0
        struct_or_class_lines = []
        new_lines = []

        with open(self.header_path, "r") as f:
            header_lines = f.readlines()

        for line in self.lines:
            stripped_line = line.lstrip()  # Remove leading whitespace
            if stripped_line.startswith("struct ") or stripped_line.startswith("class "):
                if stripped_line.startswith("struct ") and ("class" in stripped_line or "_c" in stripped_line):
                    stripped_line = stripped_line.replace("struct ","class ")
                    if "hio" not in stripped_line.lower() and "_s {" not in stripped_line.lower() and "d_a_e" not in stripped_line.lower() and "obj_ystone_class" not in stripped_line.lower():
                        # might fail if a tu has more than 1 actor
                        self.actor_name = stripped_line.split(" ")[1]

                        if "d_a_e" in self.filename:
                            self.actor_class_type = "enemy"
                            stripped_line = stripped_line.replace(" {"," : public fopEn_enemy_c {")
                        else:
                            self.actor_class_type = "actor"
                            stripped_line = stripped_line.replace(" {", " : public fopAc_ac_c {")

                migrated_types += 1
                inside_struct_or_class = True
                line = stripped_line

            if inside_struct_or_class:
                struct_or_class_lines.append(line)
            else:
                new_lines.append(line)

            if "};" in line and inside_struct_or_class:
                include_line = "#include \"f_op/f_op_actor_mng.h\"\n\n"
                if include_line not in header_lines:
                    struct_or_class_lines.insert(0, include_line)

                struct_or_class_lines.append("\n")
                struct_or_class_string = "".join(struct_or_class_lines)
                header_string = "".join(header_lines)

                if struct_or_class_string not in header_string:
                    end_guard_index = next(i for i, line in reversed(list(enumerate(header_lines))) if "#endif" in line)

                    for i, line in enumerate(reversed(struct_or_class_lines)):
                        header_lines.insert(end_guard_index-1, line)

                    with open(self.header_path, "w") as f:
                        f.writelines(header_lines)

                inside_struct_or_class = False
                struct_or_class_lines = []

        print(f"Migrated {migrated_types} types." if migrated_types > 0 else "No types to migrate!")
        self.lines = new_lines

    def comment_cleanup(self):
        header_update = 0
        types_removal = 0

        for i, line in enumerate(self.lines):
            if "// Generated By: dol2asm" in line:
                header_update = 1
                self.lines[i-1] = "/**\n"
                self.lines[i] = f" * @file {self.filename.split("/")[-1]}\n"
                self.lines[i+1] = " * \n"
                self.lines[i+2] = "*/\n"

            if "// Types:" in line:
                types_removal = 1
                self.lines.pop(i-1)
                self.lines.pop(i-1)
                self.lines.pop(i-1)
                self.lines.pop(i-1)

        print(f"Removed types comment." if types_removal == 1 else "No types comment found! Nothing to remove!")
        print(f"Updated TU header comment." if header_update == 1 else "No default header comment not found, nothing to update!")

    def setup_class_size(self):
        final_class_size = hex(int(self.class_size, 16))
        header_path = "include/"+self.filename.replace(".cpp", ".h")
        if not os.path.exists(header_path):
            print("No header file found to move remaining types to!")
            sys.exit(1)

        with open(header_path, "r") as f:
            header_lines = f.readlines()

        in_class = False
        new_lines = []
        for i, line in enumerate(header_lines):
            if self.actor_name in line:
                if "{};" in line:
                    new_lines.append("class " + self.actor_name + " : public fopEn_enemy_c {\n")
                    new_lines.append("private:\n")

                    if self.actor_class_type == "enemy":
                        new_lines.append(f"    /* 0x5ac */ u8 field_0x5ac[{final_class_size} - 0x5ac];\n")
                    elif self.actor_class_type == "actor":
                        new_lines.append(f"    /* 0x568 */ u8 field_0x568[{final_class_size} - 0x568];\n")

                    new_lines.append("};\n")
                    new_lines.append(f"STATIC_ASSERT(sizeof({self.actor_name}) == {final_class_size});\n")
                else:
                    in_class = True
                    new_lines.append(line)
            elif in_class and "};" in line:
                new_lines.append("private:\n")

                if self.actor_class_type == "enemy":
                    new_lines.append(f"    /* 0x5ac */ u8 field_0x5ac[{final_class_size} - 0x5ac];\n")
                elif self.actor_class_type == "actor":
                    new_lines.append(f"    /* 0x568 */ u8 field_0x568[{final_class_size} - 0x568];\n")

                new_lines.append("};\n")
                new_lines.append(f"STATIC_ASSERT(sizeof({self.actor_name}) == {final_class_size});\n")
                in_class = False
            else:
                new_lines.append(line)

        with open(header_path, "w") as f:
            f.writelines(new_lines)

    def write_tu_lines(self):
        with open(self.filename, "w") as f:
            f.writelines(self.lines)

    def set_class_size(self, class_size):
        self.class_size = class_size

    def check_and_add_missing_tu_headers(self):
        if len(self.include_headers) != 0:
            # find end of tu includes, accounting for multiple includes
            end_of_includes = 0
            for i, line in enumerate(self.lines):
                if "#include" in line:
                    end_of_includes = i + 1
                if end_of_includes > 0 and "#include" not in line:
                    break
            print("end of includes", end_of_includes)
            for header in self.include_headers:
                self.lines.insert(end_of_includes, f"#include \"{header}\"\n")

@click.command()
@click.option('--actor-tu', required=True, help='Path to the actor translation unit.')
def setup_actor(actor_tu):
    manager = ActorSetupManager(actor_tu)

    
    manager.remove_types()
    manager.remove_external_refs()
    manager.check_and_add_missing_tu_headers()
    manager.replace_weak_function_defs()
    manager.move_remaining_types()
    manager.comment_cleanup()
    manager.write_tu_lines()
    manager.set_class_size(setup_profile(actor_tu,manager.actor_name))

    if manager.class_size is not None:
        manager.setup_class_size()

    sys.exit(0)

if __name__ == "__main__":
    setup_actor()