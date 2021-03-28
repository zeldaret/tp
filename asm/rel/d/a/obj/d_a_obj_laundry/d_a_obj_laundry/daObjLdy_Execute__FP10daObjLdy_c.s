lbl_80C51B9C:
/* 80C51B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C51BA0  7C 08 02 A6 */	mflr r0
/* 80C51BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C51BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C51BAC  7C 7F 1B 78 */	mr r31, r3
/* 80C51BB0  4B FF F5 E5 */	bl setNormalClothPos__10daObjLdy_cFv
/* 80C51BB4  7F E3 FB 78 */	mr r3, r31
/* 80C51BB8  4B FF F5 41 */	bl setBaseMtx__10daObjLdy_cFv
/* 80C51BBC  7F E3 FB 78 */	mr r3, r31
/* 80C51BC0  4B FF FA 85 */	bl calcJointAngle__10daObjLdy_cFv
/* 80C51BC4  38 60 00 01 */	li r3, 1
/* 80C51BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C51BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C51BD0  7C 08 03 A6 */	mtlr r0
/* 80C51BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C51BD8  4E 80 00 20 */	blr 
