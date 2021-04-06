lbl_80B4B218:
/* 80B4B218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4B21C  7C 08 02 A6 */	mflr r0
/* 80B4B220  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4B224  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4B228  7C 7F 1B 78 */	mr r31, r3
/* 80B4B22C  80 63 0F 84 */	lwz r3, 0xf84(r3)
/* 80B4B230  28 03 00 00 */	cmplwi r3, 0
/* 80B4B234  41 82 00 08 */	beq lbl_80B4B23C
/* 80B4B238  48 21 AC B5 */	bl onMidnaTagSw__11daTagYami_cFv
lbl_80B4B23C:
/* 80B4B23C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B4B240  2C 00 00 00 */	cmpwi r0, 0
/* 80B4B244  41 82 00 28 */	beq lbl_80B4B26C
/* 80B4B248  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B4B24C  4B 5F A4 B1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B4B250  38 00 00 00 */	li r0, 0
/* 80B4B254  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B4B258  3C 60 80 B5 */	lis r3, lit_4193@ha /* 0x80B4CE48@ha */
/* 80B4B25C  C0 03 CE 48 */	lfs f0, lit_4193@l(r3)  /* 0x80B4CE48@l */
/* 80B4B260  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B4B264  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B4B268  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B4B26C:
/* 80B4B26C  38 00 00 00 */	li r0, 0
/* 80B4B270  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B4B274  98 1F 00 FF */	stb r0, 0xff(r31)
/* 80B4B278  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B4B27C  38 60 00 01 */	li r3, 1
/* 80B4B280  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4B284  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4B288  7C 08 03 A6 */	mtlr r0
/* 80B4B28C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4B290  4E 80 00 20 */	blr 
