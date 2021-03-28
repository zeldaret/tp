lbl_8054B93C:
/* 8054B93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054B940  7C 08 02 A6 */	mflr r0
/* 8054B944  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054B948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054B94C  7C 7F 1B 78 */	mr r31, r3
/* 8054B950  4B BF CB DC */	b execute__8daNpcT_cFv
/* 8054B954  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8054B958  7C 03 07 74 */	extsb r3, r0
/* 8054B95C  4B AE 17 10 */	b dComIfGp_getReverb__Fi
/* 8054B960  7C 65 1B 78 */	mr r5, r3
/* 8054B964  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 8054B968  38 80 00 00 */	li r4, 0
/* 8054B96C  81 9F 0E 54 */	lwz r12, 0xe54(r31)
/* 8054B970  81 8C 00 08 */	lwz r12, 8(r12)
/* 8054B974  7D 89 03 A6 */	mtctr r12
/* 8054B978  4E 80 04 21 */	bctrl 
/* 8054B97C  38 60 00 01 */	li r3, 1
/* 8054B980  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054B984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054B988  7C 08 03 A6 */	mtlr r0
/* 8054B98C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054B990  4E 80 00 20 */	blr 
