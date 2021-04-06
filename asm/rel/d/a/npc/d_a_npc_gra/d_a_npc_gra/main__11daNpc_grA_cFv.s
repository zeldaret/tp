lbl_809C0038:
/* 809C0038  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809C003C  7C 08 02 A6 */	mflr r0
/* 809C0040  90 01 00 34 */	stw r0, 0x34(r1)
/* 809C0044  39 61 00 30 */	addi r11, r1, 0x30
/* 809C0048  4B 9A 21 95 */	bl _savegpr_29
/* 809C004C  7C 7E 1B 78 */	mr r30, r3
/* 809C0050  3C 80 80 9D */	lis r4, cNullVec__6Z2Calc@ha /* 0x809CA614@ha */
/* 809C0054  3B E4 A6 14 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x809CA614@l */
/* 809C0058  48 00 2B E5 */	bl doEvent__11daNpc_grA_cFv
/* 809C005C  2C 03 00 00 */	cmpwi r3, 0
/* 809C0060  40 82 00 D8 */	bne lbl_809C0138
/* 809C0064  7F C3 F3 78 */	mr r3, r30
/* 809C0068  38 9E 0C 98 */	addi r4, r30, 0xc98
/* 809C006C  38 A0 00 01 */	li r5, 1
/* 809C0070  38 C0 00 00 */	li r6, 0
/* 809C0074  4B 79 35 05 */	bl hitChk2__8daNpcF_cFP8dCcD_Cylii
/* 809C0078  2C 03 00 00 */	cmpwi r3, 0
/* 809C007C  41 82 00 30 */	beq lbl_809C00AC
/* 809C0080  7F C3 F3 78 */	mr r3, r30
/* 809C0084  3C 80 80 9D */	lis r4, m__17daNpc_grA_Param_c@ha /* 0x809C9D98@ha */
/* 809C0088  38 84 9D 98 */	addi r4, r4, m__17daNpc_grA_Param_c@l /* 0x809C9D98@l */
/* 809C008C  A8 84 00 62 */	lha r4, 0x62(r4)
/* 809C0090  38 A0 00 17 */	li r5, 0x17
/* 809C0094  38 C0 00 00 */	li r6, 0
/* 809C0098  4B 79 35 C1 */	bl setDamage__8daNpcF_cFiii
/* 809C009C  7F C3 F3 78 */	mr r3, r30
/* 809C00A0  38 80 00 01 */	li r4, 1
/* 809C00A4  48 00 2F CD */	bl setLookMode__11daNpc_grA_cFi
/* 809C00A8  48 00 00 28 */	b lbl_809C00D0
lbl_809C00AC:
/* 809C00AC  88 1E 09 F0 */	lbz r0, 0x9f0(r30)
/* 809C00B0  28 00 00 00 */	cmplwi r0, 0
/* 809C00B4  41 82 00 1C */	beq lbl_809C00D0
/* 809C00B8  80 1E 09 54 */	lwz r0, 0x954(r30)
/* 809C00BC  2C 00 00 00 */	cmpwi r0, 0
/* 809C00C0  40 82 00 10 */	bne lbl_809C00D0
/* 809C00C4  38 00 00 00 */	li r0, 0
/* 809C00C8  B0 1E 14 72 */	sth r0, 0x1472(r30)
/* 809C00CC  98 1E 09 F0 */	stb r0, 0x9f0(r30)
lbl_809C00D0:
/* 809C00D0  38 00 00 00 */	li r0, 0
/* 809C00D4  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 809C00D8  38 7E 14 04 */	addi r3, r30, 0x1404
/* 809C00DC  4B 9A 1F 3D */	bl __ptmf_test
/* 809C00E0  2C 03 00 00 */	cmpwi r3, 0
/* 809C00E4  41 82 00 54 */	beq lbl_809C0138
/* 809C00E8  38 7E 14 10 */	addi r3, r30, 0x1410
/* 809C00EC  38 9E 14 04 */	addi r4, r30, 0x1404
/* 809C00F0  4B 9A 1F 59 */	bl __ptmf_cmpr
/* 809C00F4  2C 03 00 00 */	cmpwi r3, 0
/* 809C00F8  40 82 00 1C */	bne lbl_809C0114
/* 809C00FC  7F C3 F3 78 */	mr r3, r30
/* 809C0100  38 80 00 00 */	li r4, 0
/* 809C0104  39 9E 14 10 */	addi r12, r30, 0x1410
/* 809C0108  4B 9A 1F 7D */	bl __ptmf_scall
/* 809C010C  60 00 00 00 */	nop 
/* 809C0110  48 00 00 28 */	b lbl_809C0138
lbl_809C0114:
/* 809C0114  80 7E 14 04 */	lwz r3, 0x1404(r30)
/* 809C0118  80 1E 14 08 */	lwz r0, 0x1408(r30)
/* 809C011C  90 61 00 08 */	stw r3, 8(r1)
/* 809C0120  90 01 00 0C */	stw r0, 0xc(r1)
/* 809C0124  80 1E 14 0C */	lwz r0, 0x140c(r30)
/* 809C0128  90 01 00 10 */	stw r0, 0x10(r1)
/* 809C012C  7F C3 F3 78 */	mr r3, r30
/* 809C0130  38 81 00 08 */	addi r4, r1, 8
/* 809C0134  48 00 27 B5 */	bl setAction__11daNpc_grA_cFM11daNpc_grA_cFPCvPvPv_i
lbl_809C0138:
/* 809C0138  3B A0 00 00 */	li r29, 0
/* 809C013C  88 1E 09 F2 */	lbz r0, 0x9f2(r30)
/* 809C0140  28 00 00 00 */	cmplwi r0, 0
/* 809C0144  40 82 00 1C */	bne lbl_809C0160
/* 809C0148  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 809C014C  28 00 00 00 */	cmplwi r0, 0
/* 809C0150  41 82 00 14 */	beq lbl_809C0164
/* 809C0154  4B 66 F9 01 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 809C0158  2C 03 00 00 */	cmpwi r3, 0
/* 809C015C  40 82 00 08 */	bne lbl_809C0164
lbl_809C0160:
/* 809C0160  3B A0 00 01 */	li r29, 1
lbl_809C0164:
/* 809C0164  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 809C0168  41 82 00 0C */	beq lbl_809C0174
/* 809C016C  38 00 00 00 */	li r0, 0
/* 809C0170  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_809C0174:
/* 809C0174  3C 60 80 9D */	lis r3, m__17daNpc_grA_Param_c@ha /* 0x809C9D98@ha */
/* 809C0178  38 63 9D 98 */	addi r3, r3, m__17daNpc_grA_Param_c@l /* 0x809C9D98@l */
/* 809C017C  88 03 00 6A */	lbz r0, 0x6a(r3)
/* 809C0180  28 00 00 00 */	cmplwi r0, 0
/* 809C0184  40 82 00 C4 */	bne lbl_809C0248
/* 809C0188  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C018C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C0190  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 809C0194  28 03 00 00 */	cmplwi r3, 0
/* 809C0198  41 82 00 30 */	beq lbl_809C01C8
/* 809C019C  88 1E 09 ED */	lbz r0, 0x9ed(r30)
/* 809C01A0  28 00 00 00 */	cmplwi r0, 0
/* 809C01A4  41 82 00 A4 */	beq lbl_809C0248
/* 809C01A8  38 00 00 00 */	li r0, 0
/* 809C01AC  28 03 00 00 */	cmplwi r3, 0
/* 809C01B0  41 82 00 0C */	beq lbl_809C01BC
/* 809C01B4  28 03 00 02 */	cmplwi r3, 2
/* 809C01B8  40 82 00 08 */	bne lbl_809C01C0
lbl_809C01BC:
/* 809C01BC  38 00 00 01 */	li r0, 1
lbl_809C01C0:
/* 809C01C0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809C01C4  41 82 00 84 */	beq lbl_809C0248
lbl_809C01C8:
/* 809C01C8  39 20 00 01 */	li r9, 1
/* 809C01CC  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 809C01D0  28 00 00 00 */	cmplwi r0, 0
/* 809C01D4  41 82 00 3C */	beq lbl_809C0210
/* 809C01D8  2C 00 00 06 */	cmpwi r0, 6
/* 809C01DC  40 80 00 14 */	bge lbl_809C01F0
/* 809C01E0  2C 00 00 03 */	cmpwi r0, 3
/* 809C01E4  40 80 00 08 */	bge lbl_809C01EC
/* 809C01E8  48 00 00 08 */	b lbl_809C01F0
lbl_809C01EC:
/* 809C01EC  39 20 00 03 */	li r9, 3
lbl_809C01F0:
/* 809C01F0  38 7F 02 68 */	addi r3, r31, 0x268
/* 809C01F4  54 00 1B 78 */	rlwinm r0, r0, 3, 0xd, 0x1c
/* 809C01F8  7C 63 02 14 */	add r3, r3, r0
/* 809C01FC  80 03 00 04 */	lwz r0, 4(r3)
/* 809C0200  54 00 10 3A */	slwi r0, r0, 2
/* 809C0204  38 7F 04 C0 */	addi r3, r31, 0x4c0
/* 809C0208  7C 03 00 2E */	lwzx r0, r3, r0
/* 809C020C  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_809C0210:
/* 809C0210  7F C3 F3 78 */	mr r3, r30
/* 809C0214  88 9E 16 91 */	lbz r4, 0x1691(r30)
/* 809C0218  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 809C021C  54 00 18 38 */	slwi r0, r0, 3
/* 809C0220  38 BF 02 68 */	addi r5, r31, 0x268
/* 809C0224  7C 05 00 2E */	lwzx r0, r5, r0
/* 809C0228  54 00 10 3A */	slwi r0, r0, 2
/* 809C022C  38 BF 02 C0 */	addi r5, r31, 0x2c0
/* 809C0230  7C A5 00 2E */	lwzx r5, r5, r0
/* 809C0234  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 809C0238  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 809C023C  38 E0 00 04 */	li r7, 4
/* 809C0240  39 00 00 FF */	li r8, 0xff
/* 809C0244  4B 79 36 39 */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_809C0248:
/* 809C0248  88 1E 09 EE */	lbz r0, 0x9ee(r30)
/* 809C024C  28 00 00 00 */	cmplwi r0, 0
/* 809C0250  41 82 00 1C */	beq lbl_809C026C
/* 809C0254  3C 60 80 9D */	lis r3, lit_4611@ha /* 0x809C9E34@ha */
/* 809C0258  C0 03 9E 34 */	lfs f0, lit_4611@l(r3)  /* 0x809C9E34@l */
/* 809C025C  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 809C0260  D0 1E 09 7C */	stfs f0, 0x97c(r30)
/* 809C0264  38 00 00 00 */	li r0, 0
/* 809C0268  98 1E 09 EE */	stb r0, 0x9ee(r30)
lbl_809C026C:
/* 809C026C  7F C3 F3 78 */	mr r3, r30
/* 809C0270  48 00 17 21 */	bl playExpression__11daNpc_grA_cFv
/* 809C0274  7F C3 F3 78 */	mr r3, r30
/* 809C0278  48 00 1E 09 */	bl playMotion__11daNpc_grA_cFv
/* 809C027C  38 60 00 01 */	li r3, 1
/* 809C0280  39 61 00 30 */	addi r11, r1, 0x30
/* 809C0284  4B 9A 1F A5 */	bl _restgpr_29
/* 809C0288  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809C028C  7C 08 03 A6 */	mtlr r0
/* 809C0290  38 21 00 30 */	addi r1, r1, 0x30
/* 809C0294  4E 80 00 20 */	blr 
