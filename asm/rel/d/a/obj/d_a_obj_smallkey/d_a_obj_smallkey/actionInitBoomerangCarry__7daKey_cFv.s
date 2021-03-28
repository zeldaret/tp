lbl_80CDAE54:
/* 80CDAE54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CDAE58  7C 08 02 A6 */	mflr r0
/* 80CDAE5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDAE60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CDAE64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CDAE68  7C 7F 1B 78 */	mr r31, r3
/* 80CDAE6C  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80CDAE70  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CDAE74  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80CDAE78  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 80CDAE7C  60 00 00 01 */	ori r0, r0, 1
/* 80CDAE80  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 80CDAE84  80 03 08 0C */	lwz r0, 0x80c(r3)
/* 80CDAE88  60 00 00 01 */	ori r0, r0, 1
/* 80CDAE8C  90 03 08 0C */	stw r0, 0x80c(r3)
/* 80CDAE90  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha
/* 80CDAE94  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l
/* 80CDAE98  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 80CDAE9C  54 00 10 3A */	slwi r0, r0, 2
/* 80CDAEA0  7C 63 02 14 */	add r3, r3, r0
/* 80CDAEA4  8B C3 00 01 */	lbz r30, 1(r3)
/* 80CDAEA8  88 03 00 02 */	lbz r0, 2(r3)
/* 80CDAEAC  38 7F 09 04 */	addi r3, r31, 0x904
/* 80CDAEB0  3C 80 80 CE */	lis r4, lit_4503@ha
/* 80CDAEB4  C0 44 B8 88 */	lfs f2, lit_4503@l(r4)
/* 80CDAEB8  3C 80 80 CE */	lis r4, lit_4067@ha
/* 80CDAEBC  C8 24 B8 6C */	lfd f1, lit_4067@l(r4)
/* 80CDAEC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CDAEC4  3C 00 43 30 */	lis r0, 0x4330
/* 80CDAEC8  90 01 00 08 */	stw r0, 8(r1)
/* 80CDAECC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CDAED0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CDAED4  EC 22 00 32 */	fmuls f1, f2, f0
/* 80CDAED8  4B 59 43 28 */	b SetR__8cM3dGCylFf
/* 80CDAEDC  38 7F 09 04 */	addi r3, r31, 0x904
/* 80CDAEE0  3C 80 80 CE */	lis r4, lit_4503@ha
/* 80CDAEE4  C0 44 B8 88 */	lfs f2, lit_4503@l(r4)
/* 80CDAEE8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80CDAEEC  3C 80 80 CE */	lis r4, lit_4067@ha
/* 80CDAEF0  C8 24 B8 6C */	lfd f1, lit_4067@l(r4)
/* 80CDAEF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDAEF8  3C 00 43 30 */	lis r0, 0x4330
/* 80CDAEFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CDAF00  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80CDAF04  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CDAF08  EC 22 00 32 */	fmuls f1, f2, f0
/* 80CDAF0C  4B 59 42 EC */	b SetH__8cM3dGCylFf
/* 80CDAF10  80 1F 08 0C */	lwz r0, 0x80c(r31)
/* 80CDAF14  60 00 00 01 */	ori r0, r0, 1
/* 80CDAF18  90 1F 08 0C */	stw r0, 0x80c(r31)
/* 80CDAF1C  38 00 00 06 */	li r0, 6
/* 80CDAF20  98 1F 09 34 */	stb r0, 0x934(r31)
/* 80CDAF24  38 60 00 01 */	li r3, 1
/* 80CDAF28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CDAF2C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CDAF30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CDAF34  7C 08 03 A6 */	mtlr r0
/* 80CDAF38  38 21 00 20 */	addi r1, r1, 0x20
/* 80CDAF3C  4E 80 00 20 */	blr 
