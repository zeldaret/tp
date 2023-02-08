lbl_80CAD140:
/* 80CAD140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAD144  7C 08 02 A6 */	mflr r0
/* 80CAD148  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAD14C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAD150  93 C1 00 08 */	stw r30, 8(r1)
/* 80CAD154  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CAD158  7C 9F 23 78 */	mr r31, r4
/* 80CAD15C  41 82 00 38 */	beq lbl_80CAD194
/* 80CAD160  3C 80 80 CB */	lis r4, __vt__13daObjPDwall_c@ha /* 0x80CAD250@ha */
/* 80CAD164  38 04 D2 50 */	addi r0, r4, __vt__13daObjPDwall_c@l /* 0x80CAD250@l */
/* 80CAD168  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CAD16C  41 82 00 18 */	beq lbl_80CAD184
/* 80CAD170  3C 80 80 3B */	lis r4, __vt__16dBgS_MoveBgActor@ha /* 0x803AB9A0@ha */
/* 80CAD174  38 04 B9 A0 */	addi r0, r4, __vt__16dBgS_MoveBgActor@l /* 0x803AB9A0@l */
/* 80CAD178  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CAD17C  38 80 00 00 */	li r4, 0
/* 80CAD180  4B 36 BB 0D */	bl __dt__10fopAc_ac_cFv
lbl_80CAD184:
/* 80CAD184  7F E0 07 35 */	extsh. r0, r31
/* 80CAD188  40 81 00 0C */	ble lbl_80CAD194
/* 80CAD18C  7F C3 F3 78 */	mr r3, r30
/* 80CAD190  4B 62 1B AD */	bl __dl__FPv
lbl_80CAD194:
/* 80CAD194  7F C3 F3 78 */	mr r3, r30
/* 80CAD198  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAD19C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CAD1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAD1A4  7C 08 03 A6 */	mtlr r0
/* 80CAD1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAD1AC  4E 80 00 20 */	blr 
