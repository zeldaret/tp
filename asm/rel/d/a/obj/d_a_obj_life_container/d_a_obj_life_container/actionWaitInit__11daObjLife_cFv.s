lbl_804CD5B8:
/* 804CD5B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CD5BC  7C 08 02 A6 */	mflr r0
/* 804CD5C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CD5C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CD5C8  7C 7F 1B 78 */	mr r31, r3
/* 804CD5CC  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 804CD5D0  60 00 00 01 */	ori r0, r0, 1
/* 804CD5D4  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 804CD5D8  80 03 08 0C */	lwz r0, 0x80c(r3)
/* 804CD5DC  60 00 00 01 */	ori r0, r0, 1
/* 804CD5E0  90 03 08 0C */	stw r0, 0x80c(r3)
/* 804CD5E4  4B B6 A4 90 */	b show__12daItemBase_cFv
/* 804CD5E8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804CD5EC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 804CD5F0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804CD5F4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 804CD5F8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804CD5FC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 804CD600  38 00 00 00 */	li r0, 0
/* 804CD604  98 1F 09 34 */	stb r0, 0x934(r31)
/* 804CD608  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CD60C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804CD610  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 804CD614  3C 80 80 4D */	lis r4, stringBase0@ha
/* 804CD618  38 84 E4 A4 */	addi r4, r4, stringBase0@l
/* 804CD61C  4B E9 B3 78 */	b strcmp
/* 804CD620  2C 03 00 00 */	cmpwi r3, 0
/* 804CD624  40 82 00 24 */	bne lbl_804CD648
/* 804CD628  3C 60 80 4D */	lis r3, lit_3855@ha
/* 804CD62C  C0 03 E4 38 */	lfs f0, lit_3855@l(r3)
/* 804CD630  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 804CD634  38 00 00 00 */	li r0, 0
/* 804CD638  B0 1F 09 48 */	sth r0, 0x948(r31)
/* 804CD63C  3C 60 80 4D */	lis r3, lit_4206@ha
/* 804CD640  C0 03 E4 84 */	lfs f0, lit_4206@l(r3)
/* 804CD644  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_804CD648:
/* 804CD648  38 60 00 01 */	li r3, 1
/* 804CD64C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CD650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CD654  7C 08 03 A6 */	mtlr r0
/* 804CD658  38 21 00 10 */	addi r1, r1, 0x10
/* 804CD65C  4E 80 00 20 */	blr 
