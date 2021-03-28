lbl_804C84D8:
/* 804C84D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C84DC  7C 08 02 A6 */	mflr r0
/* 804C84E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C84E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804C84E8  7C 7F 1B 78 */	mr r31, r3
/* 804C84EC  88 03 0B 54 */	lbz r0, 0xb54(r3)
/* 804C84F0  28 00 00 04 */	cmplwi r0, 4
/* 804C84F4  41 82 00 0C */	beq lbl_804C8500
/* 804C84F8  28 00 00 05 */	cmplwi r0, 5
/* 804C84FC  40 82 00 24 */	bne lbl_804C8520
lbl_804C8500:
/* 804C8500  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804C8504  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 804C8508  D0 1F 0B CC */	stfs f0, 0xbcc(r31)
/* 804C850C  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 804C8510  D0 1F 0B D0 */	stfs f0, 0xbd0(r31)
/* 804C8514  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 804C8518  D0 1F 0B D4 */	stfs f0, 0xbd4(r31)
/* 804C851C  48 00 00 1C */	b lbl_804C8538
lbl_804C8520:
/* 804C8520  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804C8524  38 63 00 24 */	addi r3, r3, 0x24
/* 804C8528  3C 80 80 4D */	lis r4, localOffset@ha
/* 804C852C  38 84 C3 E8 */	addi r4, r4, localOffset@l
/* 804C8530  38 BF 0B CC */	addi r5, r31, 0xbcc
/* 804C8534  4B E7 E8 38 */	b PSMTXMultVec
lbl_804C8538:
/* 804C8538  38 61 00 14 */	addi r3, r1, 0x14
/* 804C853C  38 9F 0B CC */	addi r4, r31, 0xbcc
/* 804C8540  38 BF 0B D8 */	addi r5, r31, 0xbd8
/* 804C8544  4B D9 E5 F0 */	b __mi__4cXyzCFRC3Vec
/* 804C8548  38 61 00 08 */	addi r3, r1, 8
/* 804C854C  38 81 00 14 */	addi r4, r1, 0x14
/* 804C8550  3C A0 80 4D */	lis r5, lit_4214@ha
/* 804C8554  C0 25 C3 74 */	lfs f1, lit_4214@l(r5)
/* 804C8558  4B D9 E6 2C */	b __ml__4cXyzCFf
/* 804C855C  C0 01 00 08 */	lfs f0, 8(r1)
/* 804C8560  D0 1F 0B E4 */	stfs f0, 0xbe4(r31)
/* 804C8564  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804C8568  D0 1F 0B E8 */	stfs f0, 0xbe8(r31)
/* 804C856C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804C8570  D0 1F 0B EC */	stfs f0, 0xbec(r31)
/* 804C8574  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804C8578  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C857C  7C 08 03 A6 */	mtlr r0
/* 804C8580  38 21 00 30 */	addi r1, r1, 0x30
/* 804C8584  4E 80 00 20 */	blr 
