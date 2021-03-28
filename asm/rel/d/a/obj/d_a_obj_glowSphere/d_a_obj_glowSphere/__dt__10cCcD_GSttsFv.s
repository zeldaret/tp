lbl_80BFA724:
/* 80BFA724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFA728  7C 08 02 A6 */	mflr r0
/* 80BFA72C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFA730  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFA734  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BFA738  41 82 00 1C */	beq lbl_80BFA754
/* 80BFA73C  3C A0 80 C0 */	lis r5, __vt__10cCcD_GStts@ha
/* 80BFA740  38 05 AB 1C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80BFA744  90 1F 00 00 */	stw r0, 0(r31)
/* 80BFA748  7C 80 07 35 */	extsh. r0, r4
/* 80BFA74C  40 81 00 08 */	ble lbl_80BFA754
/* 80BFA750  4B 6D 45 EC */	b __dl__FPv
lbl_80BFA754:
/* 80BFA754  7F E3 FB 78 */	mr r3, r31
/* 80BFA758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFA75C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFA760  7C 08 03 A6 */	mtlr r0
/* 80BFA764  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFA768  4E 80 00 20 */	blr 
