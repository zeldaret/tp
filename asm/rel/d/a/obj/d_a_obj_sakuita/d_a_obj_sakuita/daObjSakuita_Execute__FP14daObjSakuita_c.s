lbl_80CC4C14:
/* 80CC4C14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC4C18  7C 08 02 A6 */	mflr r0
/* 80CC4C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4C20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC4C24  7C 7F 1B 78 */	mr r31, r3
/* 80CC4C28  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80CC4C2C  3C 80 80 CC */	lis r4, M_attr__14daObjSakuita_c@ha /* 0x80CC50B4@ha */
/* 80CC4C30  38 84 50 B4 */	addi r4, r4, M_attr__14daObjSakuita_c@l /* 0x80CC50B4@l */
/* 80CC4C34  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80CC4C38  EC 01 00 2A */	fadds f0, f1, f0
/* 80CC4C3C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80CC4C40  4B FF FC 5D */	bl setPlatePos__14daObjSakuita_cFv
/* 80CC4C44  7F E3 FB 78 */	mr r3, r31
/* 80CC4C48  4B FF FE 51 */	bl calcAngle__14daObjSakuita_cFv
/* 80CC4C4C  7F E3 FB 78 */	mr r3, r31
/* 80CC4C50  4B FF FB C9 */	bl setBaseMtx__14daObjSakuita_cFv
/* 80CC4C54  38 60 00 01 */	li r3, 1
/* 80CC4C58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC4C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC4C60  7C 08 03 A6 */	mtlr r0
/* 80CC4C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC4C68  4E 80 00 20 */	blr 
