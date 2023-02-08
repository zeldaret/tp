lbl_8053DE00:
/* 8053DE00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DE04  7C 08 02 A6 */	mflr r0
/* 8053DE08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DE0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053DE10  93 C1 00 08 */	stw r30, 8(r1)
/* 8053DE14  7C 7E 1B 79 */	or. r30, r3, r3
/* 8053DE18  7C 9F 23 78 */	mr r31, r4
/* 8053DE1C  41 82 00 38 */	beq lbl_8053DE54
/* 8053DE20  3C 60 80 54 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8053FD38@ha */
/* 8053DE24  38 03 FD 38 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8053FD38@l */
/* 8053DE28  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8053DE2C  38 7E 00 14 */	addi r3, r30, 0x14
/* 8053DE30  38 80 FF FF */	li r4, -1
/* 8053DE34  4B D3 10 E5 */	bl __dt__8cM3dGCirFv
/* 8053DE38  7F C3 F3 78 */	mr r3, r30
/* 8053DE3C  38 80 00 00 */	li r4, 0
/* 8053DE40  4B D2 A2 71 */	bl __dt__13cBgS_PolyInfoFv
/* 8053DE44  7F E0 07 35 */	extsh. r0, r31
/* 8053DE48  40 81 00 0C */	ble lbl_8053DE54
/* 8053DE4C  7F C3 F3 78 */	mr r3, r30
/* 8053DE50  4B D9 0E ED */	bl __dl__FPv
lbl_8053DE54:
/* 8053DE54  7F C3 F3 78 */	mr r3, r30
/* 8053DE58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053DE5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053DE60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DE64  7C 08 03 A6 */	mtlr r0
/* 8053DE68  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DE6C  4E 80 00 20 */	blr 
