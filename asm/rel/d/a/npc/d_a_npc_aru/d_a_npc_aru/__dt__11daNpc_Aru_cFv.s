lbl_8095178C:
/* 8095178C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80951790  7C 08 02 A6 */	mflr r0
/* 80951794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80951798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095179C  93 C1 00 08 */	stw r30, 8(r1)
/* 809517A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 809517A4  7C 9F 23 78 */	mr r31, r4
/* 809517A8  41 82 01 00 */	beq lbl_809518A8
/* 809517AC  3C 60 80 96 */	lis r3, __vt__11daNpc_Aru_c@ha /* 0x80958044@ha */
/* 809517B0  38 03 80 44 */	addi r0, r3, __vt__11daNpc_Aru_c@l /* 0x80958044@l */
/* 809517B4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 809517B8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809517BC  28 03 00 00 */	cmplwi r3, 0
/* 809517C0  41 82 00 08 */	beq lbl_809517C8
/* 809517C4  4B 6B FB 4D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809517C8:
/* 809517C8  7F C3 F3 78 */	mr r3, r30
/* 809517CC  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 809517D0  54 00 10 3A */	slwi r0, r0, 2
/* 809517D4  3C 80 80 95 */	lis r4, l_loadResPtrnList@ha /* 0x80957984@ha */
/* 809517D8  38 84 79 84 */	addi r4, r4, l_loadResPtrnList@l /* 0x80957984@l */
/* 809517DC  7C 84 00 2E */	lwzx r4, r4, r0
/* 809517E0  3C A0 80 95 */	lis r5, l_resNameList@ha /* 0x80957970@ha */
/* 809517E4  38 A5 79 70 */	addi r5, r5, l_resNameList@l /* 0x80957970@l */
/* 809517E8  4B 7F 6C C5 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 809517EC  38 7E 0F 84 */	addi r3, r30, 0xf84
/* 809517F0  3C 80 80 95 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x809567C0@ha */
/* 809517F4  38 84 67 C0 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l /* 0x809567C0@l */
/* 809517F8  38 A0 00 08 */	li r5, 8
/* 809517FC  38 C0 00 04 */	li r6, 4
/* 80951800  4B A1 04 E9 */	bl __destroy_arr
/* 80951804  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80951808  41 82 00 84 */	beq lbl_8095188C
/* 8095180C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80951810  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80951814  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80951818  38 03 00 2C */	addi r0, r3, 0x2c
/* 8095181C  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80951820  38 03 00 84 */	addi r0, r3, 0x84
/* 80951824  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80951828  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 8095182C  41 82 00 54 */	beq lbl_80951880
/* 80951830  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80951834  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80951838  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 8095183C  38 03 00 58 */	addi r0, r3, 0x58
/* 80951840  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80951844  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80951848  41 82 00 10 */	beq lbl_80951858
/* 8095184C  3C 60 80 96 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80958038@ha */
/* 80951850  38 03 80 38 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80958038@l */
/* 80951854  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80951858:
/* 80951858  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 8095185C  41 82 00 24 */	beq lbl_80951880
/* 80951860  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80951864  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80951868  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 8095186C  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80951870  41 82 00 10 */	beq lbl_80951880
/* 80951874  3C 60 80 96 */	lis r3, __vt__8cM3dGAab@ha /* 0x8095802C@ha */
/* 80951878  38 03 80 2C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8095802C@l */
/* 8095187C  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80951880:
/* 80951880  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80951884  38 80 00 00 */	li r4, 0
/* 80951888  4B 73 28 5D */	bl __dt__12dCcD_GObjInfFv
lbl_8095188C:
/* 8095188C  7F C3 F3 78 */	mr r3, r30
/* 80951890  38 80 00 00 */	li r4, 0
/* 80951894  48 00 4B 2D */	bl __dt__8daNpcT_cFv
/* 80951898  7F E0 07 35 */	extsh. r0, r31
/* 8095189C  40 81 00 0C */	ble lbl_809518A8
/* 809518A0  7F C3 F3 78 */	mr r3, r30
/* 809518A4  4B 97 D4 99 */	bl __dl__FPv
lbl_809518A8:
/* 809518A8  7F C3 F3 78 */	mr r3, r30
/* 809518AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809518B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809518B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809518B8  7C 08 03 A6 */	mtlr r0
/* 809518BC  38 21 00 10 */	addi r1, r1, 0x10
/* 809518C0  4E 80 00 20 */	blr 
