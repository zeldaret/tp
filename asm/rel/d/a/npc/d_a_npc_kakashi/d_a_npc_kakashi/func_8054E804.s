lbl_8054E804:
/* 8054E804  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054E808  7C 08 02 A6 */	mflr r0
/* 8054E80C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054E810  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8054E814  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8054E818  7C 7F 1B 78 */	mr r31, r3
/* 8054E81C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8054E820  90 01 00 08 */	stw r0, 8(r1)
/* 8054E824  4B FF F6 F1 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 8054E828  3C 60 80 55 */	lis r3, __vt__15daNpc_Kakashi_c@ha /* 0x8054F0C8@ha */
/* 8054E82C  38 03 F0 C8 */	addi r0, r3, __vt__15daNpc_Kakashi_c@l /* 0x8054F0C8@l */
/* 8054E830  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 8054E834  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 8054E838  4B D7 00 0D */	bl __ct__16Z2SoundObjSimpleFv
/* 8054E83C  3B DF 0E 64 */	addi r30, r31, 0xe64
/* 8054E840  7F C3 F3 78 */	mr r3, r30
/* 8054E844  4B B3 51 E5 */	bl __ct__12dCcD_GObjInfFv
/* 8054E848  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8054E84C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8054E850  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8054E854  3C 60 80 55 */	lis r3, __vt__8cM3dGAab@ha /* 0x8054F0B0@ha */
/* 8054E858  38 03 F0 B0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8054F0B0@l */
/* 8054E85C  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 8054E860  3C 60 80 55 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8054F0BC@ha */
/* 8054E864  38 03 F0 BC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8054F0BC@l */
/* 8054E868  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8054E86C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8054E870  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8054E874  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8054E878  38 03 00 58 */	addi r0, r3, 0x58
/* 8054E87C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8054E880  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8054E884  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8054E888  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8054E88C  38 03 00 2C */	addi r0, r3, 0x2c
/* 8054E890  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8054E894  38 03 00 84 */	addi r0, r3, 0x84
/* 8054E898  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8054E89C  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 8054E8A0  3C 80 80 55 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x8054E8FC@ha */
/* 8054E8A4  38 84 E8 FC */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x8054E8FC@l */
/* 8054E8A8  3C A0 80 55 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x8054DE0C@ha */
/* 8054E8AC  38 A5 DE 0C */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x8054DE0C@l */
/* 8054E8B0  38 C0 01 38 */	li r6, 0x138
/* 8054E8B4  38 E0 00 03 */	li r7, 3
/* 8054E8B8  4B E1 34 A9 */	bl __construct_array
/* 8054E8BC  38 7F 13 64 */	addi r3, r31, 0x1364
/* 8054E8C0  3C 80 80 55 */	lis r4, __ct__5csXyzFv@ha /* 0x8054E8F8@ha */
/* 8054E8C4  38 84 E8 F8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x8054E8F8@l */
/* 8054E8C8  3C A0 80 55 */	lis r5, __dt__5csXyzFv@ha /* 0x8054DED8@ha */
/* 8054E8CC  38 A5 DE D8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x8054DED8@l */
/* 8054E8D0  38 C0 00 06 */	li r6, 6
/* 8054E8D4  38 E0 00 03 */	li r7, 3
/* 8054E8D8  4B E1 34 89 */	bl __construct_array
/* 8054E8DC  7F E3 FB 78 */	mr r3, r31
/* 8054E8E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8054E8E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8054E8E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054E8EC  7C 08 03 A6 */	mtlr r0
/* 8054E8F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8054E8F4  4E 80 00 20 */	blr 
