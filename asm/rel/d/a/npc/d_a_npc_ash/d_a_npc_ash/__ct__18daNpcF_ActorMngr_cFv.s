lbl_8095CDD4:
/* 8095CDD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095CDD8  7C 08 02 A6 */	mflr r0
/* 8095CDDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095CDE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095CDE4  7C 7F 1B 78 */	mr r31, r3
/* 8095CDE8  3C 80 80 96 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x8095DCFC@ha */
/* 8095CDEC  38 04 DC FC */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x8095DCFC@l */
/* 8095CDF0  90 03 00 04 */	stw r0, 4(r3)
/* 8095CDF4  4B 7F 38 BD */	bl initialize__18daNpcF_ActorMngr_cFv
/* 8095CDF8  7F E3 FB 78 */	mr r3, r31
/* 8095CDFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8095CE00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095CE04  7C 08 03 A6 */	mtlr r0
/* 8095CE08  38 21 00 10 */	addi r1, r1, 0x10
/* 8095CE0C  4E 80 00 20 */	blr 
