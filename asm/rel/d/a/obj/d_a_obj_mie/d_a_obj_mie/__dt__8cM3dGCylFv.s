lbl_80C943E0:
/* 80C943E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C943E4  7C 08 02 A6 */	mflr r0
/* 80C943E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C943EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C943F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C943F4  41 82 00 1C */	beq lbl_80C94410
/* 80C943F8  3C A0 80 C9 */	lis r5, __vt__8cM3dGCyl@ha
/* 80C943FC  38 05 5C 94 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80C94400  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C94404  7C 80 07 35 */	extsh. r0, r4
/* 80C94408  40 81 00 08 */	ble lbl_80C94410
/* 80C9440C  4B 63 A9 30 */	b __dl__FPv
lbl_80C94410:
/* 80C94410  7F E3 FB 78 */	mr r3, r31
/* 80C94414  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C94418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9441C  7C 08 03 A6 */	mtlr r0
/* 80C94420  38 21 00 10 */	addi r1, r1, 0x10
/* 80C94424  4E 80 00 20 */	blr 
