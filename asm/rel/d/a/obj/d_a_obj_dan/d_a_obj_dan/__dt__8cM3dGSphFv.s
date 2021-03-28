lbl_80BDC258:
/* 80BDC258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDC25C  7C 08 02 A6 */	mflr r0
/* 80BDC260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDC264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDC268  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BDC26C  41 82 00 1C */	beq lbl_80BDC288
/* 80BDC270  3C A0 80 BE */	lis r5, __vt__8cM3dGSph@ha
/* 80BDC274  38 05 C5 20 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80BDC278  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BDC27C  7C 80 07 35 */	extsh. r0, r4
/* 80BDC280  40 81 00 08 */	ble lbl_80BDC288
/* 80BDC284  4B 6F 2A B8 */	b __dl__FPv
lbl_80BDC288:
/* 80BDC288  7F E3 FB 78 */	mr r3, r31
/* 80BDC28C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDC290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDC294  7C 08 03 A6 */	mtlr r0
/* 80BDC298  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDC29C  4E 80 00 20 */	blr 
