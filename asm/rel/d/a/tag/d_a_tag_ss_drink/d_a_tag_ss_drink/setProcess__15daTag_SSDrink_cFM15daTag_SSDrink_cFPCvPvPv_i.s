lbl_80D630E8:
/* 80D630E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D630EC  7C 08 02 A6 */	mflr r0
/* 80D630F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D630F4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D630F8  4B 5F F0 E4 */	b _savegpr_29
/* 80D630FC  7C 7D 1B 78 */	mr r29, r3
/* 80D63100  7C 9E 23 78 */	mr r30, r4
/* 80D63104  3B E0 00 00 */	li r31, 0
/* 80D63108  80 84 00 00 */	lwz r4, 0(r4)
/* 80D6310C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80D63110  90 81 00 08 */	stw r4, 8(r1)
/* 80D63114  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D63118  80 1E 00 08 */	lwz r0, 8(r30)
/* 80D6311C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D63120  38 81 00 08 */	addi r4, r1, 8
/* 80D63124  4B FF FF 99 */	bl checkProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i
/* 80D63128  2C 03 00 00 */	cmpwi r3, 0
/* 80D6312C  41 82 00 0C */	beq lbl_80D63138
/* 80D63130  38 60 00 00 */	li r3, 0
/* 80D63134  48 00 00 88 */	b lbl_80D631BC
lbl_80D63138:
/* 80D63138  38 00 00 02 */	li r0, 2
/* 80D6313C  B0 1D 05 D0 */	sth r0, 0x5d0(r29)
/* 80D63140  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80D63144  4B 5F EE D4 */	b __ptmf_test
/* 80D63148  2C 03 00 00 */	cmpwi r3, 0
/* 80D6314C  41 82 00 1C */	beq lbl_80D63168
/* 80D63150  7F A3 EB 78 */	mr r3, r29
/* 80D63154  38 80 00 00 */	li r4, 0
/* 80D63158  39 9D 05 C4 */	addi r12, r29, 0x5c4
/* 80D6315C  4B 5F EF 28 */	b __ptmf_scall
/* 80D63160  60 00 00 00 */	nop 
/* 80D63164  7C 7F 1B 78 */	mr r31, r3
lbl_80D63168:
/* 80D63168  38 00 00 00 */	li r0, 0
/* 80D6316C  B0 1D 05 D0 */	sth r0, 0x5d0(r29)
/* 80D63170  80 7E 00 00 */	lwz r3, 0(r30)
/* 80D63174  80 1E 00 04 */	lwz r0, 4(r30)
/* 80D63178  90 7D 05 C4 */	stw r3, 0x5c4(r29)
/* 80D6317C  90 1D 05 C8 */	stw r0, 0x5c8(r29)
/* 80D63180  80 1E 00 08 */	lwz r0, 8(r30)
/* 80D63184  90 1D 05 CC */	stw r0, 0x5cc(r29)
/* 80D63188  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80D6318C  4B 5F EE 8C */	b __ptmf_test
/* 80D63190  2C 03 00 00 */	cmpwi r3, 0
/* 80D63194  41 82 00 1C */	beq lbl_80D631B0
/* 80D63198  7F A3 EB 78 */	mr r3, r29
/* 80D6319C  38 80 00 00 */	li r4, 0
/* 80D631A0  39 9D 05 C4 */	addi r12, r29, 0x5c4
/* 80D631A4  4B 5F EE E0 */	b __ptmf_scall
/* 80D631A8  60 00 00 00 */	nop 
/* 80D631AC  7C 7F 1B 78 */	mr r31, r3
lbl_80D631B0:
/* 80D631B0  38 00 00 01 */	li r0, 1
/* 80D631B4  B0 1D 05 D0 */	sth r0, 0x5d0(r29)
/* 80D631B8  7F E3 FB 78 */	mr r3, r31
lbl_80D631BC:
/* 80D631BC  39 61 00 30 */	addi r11, r1, 0x30
/* 80D631C0  4B 5F F0 68 */	b _restgpr_29
/* 80D631C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D631C8  7C 08 03 A6 */	mtlr r0
/* 80D631CC  38 21 00 30 */	addi r1, r1, 0x30
/* 80D631D0  4E 80 00 20 */	blr 
