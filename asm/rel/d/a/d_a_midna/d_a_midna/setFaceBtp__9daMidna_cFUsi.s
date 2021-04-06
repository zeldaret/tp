lbl_804C0BAC:
/* 804C0BAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C0BB0  7C 08 02 A6 */	mflr r0
/* 804C0BB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C0BB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804C0BBC  7C 7F 1B 78 */	mr r31, r3
/* 804C0BC0  2C 05 00 00 */	cmpwi r5, 0
/* 804C0BC4  41 82 00 14 */	beq lbl_804C0BD8
/* 804C0BC8  38 7F 06 20 */	addi r3, r31, 0x620
/* 804C0BCC  38 A0 00 00 */	li r5, 0
/* 804C0BD0  4B C9 E5 49 */	bl loadDataDemoRID__14daPy_anmHeap_cFUsUs
/* 804C0BD4  48 00 00 0C */	b lbl_804C0BE0
lbl_804C0BD8:
/* 804C0BD8  38 7F 06 20 */	addi r3, r31, 0x620
/* 804C0BDC  4B C9 E4 8D */	bl loadDataIdx__14daPy_anmHeap_cFUs
lbl_804C0BE0:
/* 804C0BE0  28 03 00 00 */	cmplwi r3, 0
/* 804C0BE4  41 82 00 74 */	beq lbl_804C0C58
/* 804C0BE8  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 804C0BEC  28 00 00 00 */	cmplwi r0, 0
/* 804C0BF0  41 82 00 68 */	beq lbl_804C0C58
/* 804C0BF4  90 7F 05 BC */	stw r3, 0x5bc(r31)
/* 804C0BF8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 804C0BFC  80 83 00 04 */	lwz r4, 4(r3)
/* 804C0C00  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 804C0C04  4B E6 A4 99 */	bl searchUpdateMaterialID__16J3DAnmTexPatternFP12J3DModelData
/* 804C0C08  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 804C0C0C  80 63 00 04 */	lwz r3, 4(r3)
/* 804C0C10  38 63 00 58 */	addi r3, r3, 0x58
/* 804C0C14  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 804C0C18  4B E6 EF B1 */	bl entryTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
/* 804C0C1C  38 00 00 00 */	li r0, 0
/* 804C0C20  98 1F 08 4A */	stb r0, 0x84a(r31)
/* 804C0C24  88 1F 08 4A */	lbz r0, 0x84a(r31)
/* 804C0C28  3C 60 80 4C */	lis r3, lit_6968@ha /* 0x804C6940@ha */
/* 804C0C2C  C8 23 69 40 */	lfd f1, lit_6968@l(r3)  /* 0x804C6940@l */
/* 804C0C30  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C0C34  3C 00 43 30 */	lis r0, 0x4330
/* 804C0C38  90 01 00 08 */	stw r0, 8(r1)
/* 804C0C3C  C8 01 00 08 */	lfd f0, 8(r1)
/* 804C0C40  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C0C44  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 804C0C48  D0 03 00 08 */	stfs f0, 8(r3)
/* 804C0C4C  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C0C50  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 804C0C54  90 1F 08 90 */	stw r0, 0x890(r31)
lbl_804C0C58:
/* 804C0C58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804C0C5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C0C60  7C 08 03 A6 */	mtlr r0
/* 804C0C64  38 21 00 20 */	addi r1, r1, 0x20
/* 804C0C68  4E 80 00 20 */	blr 
