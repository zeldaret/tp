lbl_803230EC:
/* 803230EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803230F0  7C 08 02 A6 */	mflr r0
/* 803230F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803230F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803230FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80323100  41 82 00 40 */	beq lbl_80323140
/* 80323104  3C 60 80 3D */	lis r3, __vt__22J3DColorBlockAmbientOn@ha /* 0x803CE708@ha */
/* 80323108  38 03 E7 08 */	addi r0, r3, __vt__22J3DColorBlockAmbientOn@l /* 0x803CE708@l */
/* 8032310C  90 1F 00 00 */	stw r0, 0(r31)
/* 80323110  41 82 00 20 */	beq lbl_80323130
/* 80323114  3C 60 80 3D */	lis r3, __vt__21J3DColorBlockLightOff@ha /* 0x803CEA34@ha */
/* 80323118  38 03 EA 34 */	addi r0, r3, __vt__21J3DColorBlockLightOff@l /* 0x803CEA34@l */
/* 8032311C  90 1F 00 00 */	stw r0, 0(r31)
/* 80323120  41 82 00 10 */	beq lbl_80323130
/* 80323124  3C 60 80 3D */	lis r3, __vt__13J3DColorBlock@ha /* 0x803CDEA0@ha */
/* 80323128  38 03 DE A0 */	addi r0, r3, __vt__13J3DColorBlock@l /* 0x803CDEA0@l */
/* 8032312C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80323130:
/* 80323130  7C 80 07 35 */	extsh. r0, r4
/* 80323134  40 81 00 0C */	ble lbl_80323140
/* 80323138  7F E3 FB 78 */	mr r3, r31
/* 8032313C  4B FA BC 01 */	bl __dl__FPv
lbl_80323140:
/* 80323140  7F E3 FB 78 */	mr r3, r31
/* 80323144  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80323148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032314C  7C 08 03 A6 */	mtlr r0
/* 80323150  38 21 00 10 */	addi r1, r1, 0x10
/* 80323154  4E 80 00 20 */	blr 
