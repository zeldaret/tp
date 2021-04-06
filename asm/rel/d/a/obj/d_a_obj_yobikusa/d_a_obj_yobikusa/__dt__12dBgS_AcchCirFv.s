lbl_8059D0B0:
/* 8059D0B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059D0B4  7C 08 02 A6 */	mflr r0
/* 8059D0B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059D0BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059D0C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8059D0C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8059D0C8  7C 9F 23 78 */	mr r31, r4
/* 8059D0CC  41 82 00 38 */	beq lbl_8059D104
/* 8059D0D0  3C 60 80 5A */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8059E0A0@ha */
/* 8059D0D4  38 03 E0 A0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8059E0A0@l */
/* 8059D0D8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8059D0DC  38 7E 00 14 */	addi r3, r30, 0x14
/* 8059D0E0  38 80 FF FF */	li r4, -1
/* 8059D0E4  4B CD 1E 35 */	bl __dt__8cM3dGCirFv
/* 8059D0E8  7F C3 F3 78 */	mr r3, r30
/* 8059D0EC  38 80 00 00 */	li r4, 0
/* 8059D0F0  4B CC AF C1 */	bl __dt__13cBgS_PolyInfoFv
/* 8059D0F4  7F E0 07 35 */	extsh. r0, r31
/* 8059D0F8  40 81 00 0C */	ble lbl_8059D104
/* 8059D0FC  7F C3 F3 78 */	mr r3, r30
/* 8059D100  4B D3 1C 3D */	bl __dl__FPv
lbl_8059D104:
/* 8059D104  7F C3 F3 78 */	mr r3, r30
/* 8059D108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059D10C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059D110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059D114  7C 08 03 A6 */	mtlr r0
/* 8059D118  38 21 00 10 */	addi r1, r1, 0x10
/* 8059D11C  4E 80 00 20 */	blr 
