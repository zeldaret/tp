lbl_802BF920:
/* 802BF920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BF924  7C 08 02 A6 */	mflr r0
/* 802BF928  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BF92C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BF930  7C 7F 1B 78 */	mr r31, r3
/* 802BF934  93 ED 85 C8 */	stw r31, __OSReport_disable-0x50(r13)
/* 802BF938  48 01 C5 DD */	bl initiate__10JSUPtrListFv
/* 802BF93C  38 00 00 00 */	li r0, 0
/* 802BF940  98 1F 00 19 */	stb r0, 0x19(r31)
/* 802BF944  98 1F 00 1B */	stb r0, 0x1b(r31)
/* 802BF948  7F E3 FB 78 */	mr r3, r31
/* 802BF94C  48 00 07 B5 */	bl setBattleInit__13Z2SoundObjMgrFv
/* 802BF950  7F E3 FB 78 */	mr r3, r31
/* 802BF954  38 80 00 00 */	li r4, 0
/* 802BF958  38 A0 02 BC */	li r5, 0x2bc
/* 802BF95C  38 C0 04 4C */	li r6, 0x44c
/* 802BF960  38 E0 05 DC */	li r7, 0x5dc
/* 802BF964  48 00 00 1D */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802BF968  7F E3 FB 78 */	mr r3, r31
/* 802BF96C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BF970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BF974  7C 08 03 A6 */	mtlr r0
/* 802BF978  38 21 00 10 */	addi r1, r1, 0x10
/* 802BF97C  4E 80 00 20 */	blr 
