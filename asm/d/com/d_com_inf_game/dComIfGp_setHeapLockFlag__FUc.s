lbl_8002E0E0:
/* 8002E0E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002E0E4  7C 08 02 A6 */	mflr r0
/* 8002E0E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002E0EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002E0F0  93 C1 00 08 */	stw r30, 8(r1)
/* 8002E0F4  7C 7E 1B 78 */	mr r30, r3
/* 8002E0F8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002E0FC  28 00 00 07 */	cmplwi r0, 7
/* 8002E100  41 82 00 0C */	beq lbl_8002E10C
/* 8002E104  28 00 00 08 */	cmplwi r0, 8
/* 8002E108  40 82 00 44 */	bne lbl_8002E14C
lbl_8002E10C:
/* 8002E10C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E110  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8002E114  88 1F 5E 8F */	lbz r0, 0x5e8f(r31)
/* 8002E118  28 00 00 00 */	cmplwi r0, 0
/* 8002E11C  40 82 00 08 */	bne lbl_8002E124
/* 8002E120  48 00 01 0D */	bl dComIfGp_createSubExpHeap2D__Fv
lbl_8002E124:
/* 8002E124  38 00 00 05 */	li r0, 5
/* 8002E128  98 1F 5E 8F */	stb r0, 0x5e8f(r31)
/* 8002E12C  48 00 02 1D */	bl dComIfGp_checkEmptySubHeap2D__Fv
/* 8002E130  2C 03 00 00 */	cmpwi r3, 0
/* 8002E134  41 80 00 38 */	blt lbl_8002E16C
/* 8002E138  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8002E13C  38 04 61 C0 */	addi r0, r4, g_dComIfG_gameInfo@l
/* 8002E140  7C 60 1A 14 */	add r3, r0, r3
/* 8002E144  9B C3 5E 90 */	stb r30, 0x5e90(r3)
/* 8002E148  48 00 00 24 */	b lbl_8002E16C
lbl_8002E14C:
/* 8002E14C  28 00 00 00 */	cmplwi r0, 0
/* 8002E150  40 82 00 10 */	bne lbl_8002E160
/* 8002E154  38 60 00 00 */	li r3, 0
/* 8002E158  48 00 00 31 */	bl dComIfGp_offHeapLockFlag__Fi
/* 8002E15C  48 00 00 10 */	b lbl_8002E16C
lbl_8002E160:
/* 8002E160  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E164  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E168  9B C3 5E 8F */	stb r30, 0x5e8f(r3)
lbl_8002E16C:
/* 8002E16C  38 60 00 01 */	li r3, 1
/* 8002E170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002E174  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002E178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002E17C  7C 08 03 A6 */	mtlr r0
/* 8002E180  38 21 00 10 */	addi r1, r1, 0x10
/* 8002E184  4E 80 00 20 */	blr 
