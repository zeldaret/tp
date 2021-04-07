lbl_80B1DB18:
/* 80B1DB18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1DB1C  7C 08 02 A6 */	mflr r0
/* 80B1DB20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1DB24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1DB28  93 C1 00 08 */	stw r30, 8(r1)
/* 80B1DB2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B1DB30  7C 9F 23 78 */	mr r31, r4
/* 80B1DB34  41 82 00 38 */	beq lbl_80B1DB6C
/* 80B1DB38  3C 60 80 B2 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B1E4F4@ha */
/* 80B1DB3C  38 03 E4 F4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B1E4F4@l */
/* 80B1DB40  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B1DB44  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B1DB48  38 80 FF FF */	li r4, -1
/* 80B1DB4C  4B 75 13 CD */	bl __dt__8cM3dGCirFv
/* 80B1DB50  7F C3 F3 78 */	mr r3, r30
/* 80B1DB54  38 80 00 00 */	li r4, 0
/* 80B1DB58  4B 74 A5 59 */	bl __dt__13cBgS_PolyInfoFv
/* 80B1DB5C  7F E0 07 35 */	extsh. r0, r31
/* 80B1DB60  40 81 00 0C */	ble lbl_80B1DB6C
/* 80B1DB64  7F C3 F3 78 */	mr r3, r30
/* 80B1DB68  4B 7B 11 D5 */	bl __dl__FPv
lbl_80B1DB6C:
/* 80B1DB6C  7F C3 F3 78 */	mr r3, r30
/* 80B1DB70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1DB74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B1DB78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1DB7C  7C 08 03 A6 */	mtlr r0
/* 80B1DB80  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1DB84  4E 80 00 20 */	blr 
