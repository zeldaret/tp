lbl_80BAD66C:
/* 80BAD66C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAD670  7C 08 02 A6 */	mflr r0
/* 80BAD674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAD678  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAD67C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BAD680  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BAD684  7C 9F 23 78 */	mr r31, r4
/* 80BAD688  41 82 00 EC */	beq lbl_80BAD774
/* 80BAD68C  3C 60 80 BB */	lis r3, __vt__11daObj_Bed_c@ha
/* 80BAD690  38 03 E2 34 */	addi r0, r3, __vt__11daObj_Bed_c@l
/* 80BAD694  90 1E 08 40 */	stw r0, 0x840(r30)
/* 80BAD698  80 9E 07 FC */	lwz r4, 0x7fc(r30)
/* 80BAD69C  28 04 00 00 */	cmplwi r4, 0
/* 80BAD6A0  41 82 00 14 */	beq lbl_80BAD6B4
/* 80BAD6A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BAD6A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BAD6AC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BAD6B0  4B 4C 6B A0 */	b Release__4cBgSFP9dBgW_Base
lbl_80BAD6B4:
/* 80BAD6B4  7F C3 F3 78 */	mr r3, r30
/* 80BAD6B8  48 00 08 29 */	bl getResName__11daObj_Bed_cFv
/* 80BAD6BC  7C 64 1B 78 */	mr r4, r3
/* 80BAD6C0  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80BAD6C4  4B 47 F9 44 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BAD6C8  34 1E 08 18 */	addic. r0, r30, 0x818
/* 80BAD6CC  41 82 00 10 */	beq lbl_80BAD6DC
/* 80BAD6D0  3C 60 80 BB */	lis r3, __vt__8cM3dGLin@ha
/* 80BAD6D4  38 03 E2 28 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80BAD6D8  90 1E 08 30 */	stw r0, 0x830(r30)
lbl_80BAD6DC:
/* 80BAD6DC  34 1E 08 00 */	addic. r0, r30, 0x800
/* 80BAD6E0  41 82 00 10 */	beq lbl_80BAD6F0
/* 80BAD6E4  3C 60 80 BB */	lis r3, __vt__8cM3dGCyl@ha
/* 80BAD6E8  38 03 E2 1C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BAD6EC  90 1E 08 14 */	stw r0, 0x814(r30)
lbl_80BAD6F0:
/* 80BAD6F0  38 7E 07 90 */	addi r3, r30, 0x790
/* 80BAD6F4  38 80 FF FF */	li r4, -1
/* 80BAD6F8  4B 6B A5 9C */	b __dt__11cBgS_GndChkFv
/* 80BAD6FC  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80BAD700  41 82 00 28 */	beq lbl_80BAD728
/* 80BAD704  3C 60 80 BB */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80BAD708  38 03 E2 10 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80BAD70C  90 1E 07 5C */	stw r0, 0x75c(r30)
/* 80BAD710  38 7E 07 64 */	addi r3, r30, 0x764
/* 80BAD714  38 80 FF FF */	li r4, -1
/* 80BAD718  4B 6C 18 00 */	b __dt__8cM3dGCirFv
/* 80BAD71C  38 7E 07 50 */	addi r3, r30, 0x750
/* 80BAD720  38 80 00 00 */	li r4, 0
/* 80BAD724  4B 6B A9 8C */	b __dt__13cBgS_PolyInfoFv
lbl_80BAD728:
/* 80BAD728  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80BAD72C  41 82 00 2C */	beq lbl_80BAD758
/* 80BAD730  3C 60 80 BB */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80BAD734  38 63 E1 EC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80BAD738  90 7E 05 88 */	stw r3, 0x588(r30)
/* 80BAD73C  38 03 00 0C */	addi r0, r3, 0xc
/* 80BAD740  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80BAD744  38 03 00 18 */	addi r0, r3, 0x18
/* 80BAD748  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BAD74C  38 7E 05 78 */	addi r3, r30, 0x578
/* 80BAD750  38 80 00 00 */	li r4, 0
/* 80BAD754  4B 4C 88 40 */	b __dt__9dBgS_AcchFv
lbl_80BAD758:
/* 80BAD758  7F C3 F3 78 */	mr r3, r30
/* 80BAD75C  38 80 00 00 */	li r4, 0
/* 80BAD760  4B 46 B5 2C */	b __dt__10fopAc_ac_cFv
/* 80BAD764  7F E0 07 35 */	extsh. r0, r31
/* 80BAD768  40 81 00 0C */	ble lbl_80BAD774
/* 80BAD76C  7F C3 F3 78 */	mr r3, r30
/* 80BAD770  4B 72 15 CC */	b __dl__FPv
lbl_80BAD774:
/* 80BAD774  7F C3 F3 78 */	mr r3, r30
/* 80BAD778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAD77C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BAD780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAD784  7C 08 03 A6 */	mtlr r0
/* 80BAD788  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAD78C  4E 80 00 20 */	blr 
