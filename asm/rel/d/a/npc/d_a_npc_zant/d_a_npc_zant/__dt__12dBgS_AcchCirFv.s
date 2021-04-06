lbl_80B6E1E4:
/* 80B6E1E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6E1E8  7C 08 02 A6 */	mflr r0
/* 80B6E1EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6E1F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6E1F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6E1F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B6E1FC  7C 9F 23 78 */	mr r31, r4
/* 80B6E200  41 82 00 38 */	beq lbl_80B6E238
/* 80B6E204  3C 60 80 B7 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B6EBEC@ha */
/* 80B6E208  38 03 EB EC */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B6EBEC@l */
/* 80B6E20C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B6E210  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B6E214  38 80 FF FF */	li r4, -1
/* 80B6E218  4B 70 0D 01 */	bl __dt__8cM3dGCirFv
/* 80B6E21C  7F C3 F3 78 */	mr r3, r30
/* 80B6E220  38 80 00 00 */	li r4, 0
/* 80B6E224  4B 6F 9E 8D */	bl __dt__13cBgS_PolyInfoFv
/* 80B6E228  7F E0 07 35 */	extsh. r0, r31
/* 80B6E22C  40 81 00 0C */	ble lbl_80B6E238
/* 80B6E230  7F C3 F3 78 */	mr r3, r30
/* 80B6E234  4B 76 0B 09 */	bl __dl__FPv
lbl_80B6E238:
/* 80B6E238  7F C3 F3 78 */	mr r3, r30
/* 80B6E23C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6E240  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6E244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6E248  7C 08 03 A6 */	mtlr r0
/* 80B6E24C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6E250  4E 80 00 20 */	blr 
