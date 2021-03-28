lbl_80028BB4:
/* 80028BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80028BB8  7C 08 02 A6 */	mflr r0
/* 80028BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80028BC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80028BC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80028BC8  7C 7E 1B 78 */	mr r30, r3
/* 80028BCC  3B E0 00 00 */	li r31, 0
/* 80028BD0  4B FF FC F5 */	bl getDispType__15renderingAmap_cCFv
/* 80028BD4  2C 03 00 00 */	cmpwi r3, 0
/* 80028BD8  41 82 00 44 */	beq lbl_80028C1C
/* 80028BDC  7F C3 F3 78 */	mr r3, r30
/* 80028BE0  4B FF FC E5 */	bl getDispType__15renderingAmap_cCFv
/* 80028BE4  2C 03 00 04 */	cmpwi r3, 4
/* 80028BE8  41 82 00 34 */	beq lbl_80028C1C
/* 80028BEC  7F C3 F3 78 */	mr r3, r30
/* 80028BF0  4B FF FC D5 */	bl getDispType__15renderingAmap_cCFv
/* 80028BF4  2C 03 00 03 */	cmpwi r3, 3
/* 80028BF8  41 82 00 24 */	beq lbl_80028C1C
/* 80028BFC  7F C3 F3 78 */	mr r3, r30
/* 80028C00  4B FF FC C5 */	bl getDispType__15renderingAmap_cCFv
/* 80028C04  2C 03 00 02 */	cmpwi r3, 2
/* 80028C08  41 82 00 14 */	beq lbl_80028C1C
/* 80028C0C  7F C3 F3 78 */	mr r3, r30
/* 80028C10  4B FF FC B5 */	bl getDispType__15renderingAmap_cCFv
/* 80028C14  2C 03 00 05 */	cmpwi r3, 5
/* 80028C18  40 82 00 18 */	bne lbl_80028C30
lbl_80028C1C:
/* 80028C1C  80 6D 88 00 */	lwz r3, m_res__22dMap_HIO_prm_res_dst_s(r13)
/* 80028C20  A8 63 01 AE */	lha r3, 0x1ae(r3)
/* 80028C24  7C 03 00 D0 */	neg r0, r3
/* 80028C28  7C 00 18 78 */	andc r0, r0, r3
/* 80028C2C  54 1F 0F FE */	srwi r31, r0, 0x1f
lbl_80028C30:
/* 80028C30  7F E3 FB 78 */	mr r3, r31
/* 80028C34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80028C38  83 C1 00 08 */	lwz r30, 8(r1)
/* 80028C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80028C40  7C 08 03 A6 */	mtlr r0
/* 80028C44  38 21 00 10 */	addi r1, r1, 0x10
/* 80028C48  4E 80 00 20 */	blr 
