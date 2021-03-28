lbl_80CC7124:
/* 80CC7124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC7128  7C 08 02 A6 */	mflr r0
/* 80CC712C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC7130  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC7134  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC7138  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CC713C  7C 9F 23 78 */	mr r31, r4
/* 80CC7140  41 82 00 38 */	beq lbl_80CC7178
/* 80CC7144  3C 80 80 CD */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80CC7148  38 84 95 C4 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80CC714C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CC7150  38 04 00 0C */	addi r0, r4, 0xc
/* 80CC7154  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CC7158  38 04 00 18 */	addi r0, r4, 0x18
/* 80CC715C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CC7160  38 80 00 00 */	li r4, 0
/* 80CC7164  4B 3A EE 30 */	b __dt__9dBgS_AcchFv
/* 80CC7168  7F E0 07 35 */	extsh. r0, r31
/* 80CC716C  40 81 00 0C */	ble lbl_80CC7178
/* 80CC7170  7F C3 F3 78 */	mr r3, r30
/* 80CC7174  4B 60 7B C8 */	b __dl__FPv
lbl_80CC7178:
/* 80CC7178  7F C3 F3 78 */	mr r3, r30
/* 80CC717C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC7180  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC7184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC7188  7C 08 03 A6 */	mtlr r0
/* 80CC718C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC7190  4E 80 00 20 */	blr 
