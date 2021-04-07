lbl_80CB1210:
/* 80CB1210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB1214  7C 08 02 A6 */	mflr r0
/* 80CB1218  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB121C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB1220  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB1224  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CB1228  7C 9F 23 78 */	mr r31, r4
/* 80CB122C  41 82 00 38 */	beq lbl_80CB1264
/* 80CB1230  3C 60 80 CB */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80CB192C@ha */
/* 80CB1234  38 03 19 2C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80CB192C@l */
/* 80CB1238  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80CB123C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80CB1240  38 80 FF FF */	li r4, -1
/* 80CB1244  4B 5B DC D5 */	bl __dt__8cM3dGCirFv
/* 80CB1248  7F C3 F3 78 */	mr r3, r30
/* 80CB124C  38 80 00 00 */	li r4, 0
/* 80CB1250  4B 5B 6E 61 */	bl __dt__13cBgS_PolyInfoFv
/* 80CB1254  7F E0 07 35 */	extsh. r0, r31
/* 80CB1258  40 81 00 0C */	ble lbl_80CB1264
/* 80CB125C  7F C3 F3 78 */	mr r3, r30
/* 80CB1260  4B 61 DA DD */	bl __dl__FPv
lbl_80CB1264:
/* 80CB1264  7F C3 F3 78 */	mr r3, r30
/* 80CB1268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB126C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB1270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB1274  7C 08 03 A6 */	mtlr r0
/* 80CB1278  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB127C  4E 80 00 20 */	blr 
