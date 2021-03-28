lbl_80AB1244:
/* 80AB1244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB1248  7C 08 02 A6 */	mflr r0
/* 80AB124C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB1250  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB1254  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB1258  41 82 00 1C */	beq lbl_80AB1274
/* 80AB125C  3C A0 80 AB */	lis r5, __vt__8cM3dGCyl@ha
/* 80AB1260  38 05 2B FC */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80AB1264  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80AB1268  7C 80 07 35 */	extsh. r0, r4
/* 80AB126C  40 81 00 08 */	ble lbl_80AB1274
/* 80AB1270  4B 81 DA CC */	b __dl__FPv
lbl_80AB1274:
/* 80AB1274  7F E3 FB 78 */	mr r3, r31
/* 80AB1278  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB127C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB1280  7C 08 03 A6 */	mtlr r0
/* 80AB1284  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB1288  4E 80 00 20 */	blr 
