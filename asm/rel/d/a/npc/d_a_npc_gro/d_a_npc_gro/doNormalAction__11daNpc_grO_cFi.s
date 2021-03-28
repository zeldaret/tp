lbl_809DCF44:
/* 809DCF44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809DCF48  7C 08 02 A6 */	mflr r0
/* 809DCF4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809DCF50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809DCF54  7C 7F 1B 78 */	mr r31, r3
/* 809DCF58  2C 04 00 00 */	cmpwi r4, 0
/* 809DCF5C  41 82 00 5C */	beq lbl_809DCFB8
/* 809DCF60  38 9F 0C 98 */	addi r4, r31, 0xc98
/* 809DCF64  38 A0 00 01 */	li r5, 1
/* 809DCF68  38 C0 00 00 */	li r6, 0
/* 809DCF6C  4B 77 66 0C */	b hitChk2__8daNpcF_cFP8dCcD_Cylii
/* 809DCF70  2C 03 00 00 */	cmpwi r3, 0
/* 809DCF74  41 82 00 44 */	beq lbl_809DCFB8
/* 809DCF78  7F E3 FB 78 */	mr r3, r31
/* 809DCF7C  80 1F 09 30 */	lwz r0, 0x930(r31)
/* 809DCF80  2C 00 00 08 */	cmpwi r0, 8
/* 809DCF84  40 82 00 0C */	bne lbl_809DCF90
/* 809DCF88  38 80 00 14 */	li r4, 0x14
/* 809DCF8C  48 00 00 10 */	b lbl_809DCF9C
lbl_809DCF90:
/* 809DCF90  3C 80 80 9E */	lis r4, m__17daNpc_grO_Param_c@ha
/* 809DCF94  38 84 EF 7C */	addi r4, r4, m__17daNpc_grO_Param_c@l
/* 809DCF98  A8 84 00 62 */	lha r4, 0x62(r4)
lbl_809DCF9C:
/* 809DCF9C  38 A0 00 0C */	li r5, 0xc
/* 809DCFA0  38 C0 00 00 */	li r6, 0
/* 809DCFA4  4B 77 66 B4 */	b setDamage__8daNpcF_cFiii
/* 809DCFA8  7F E3 FB 78 */	mr r3, r31
/* 809DCFAC  38 80 00 01 */	li r4, 1
/* 809DCFB0  48 00 04 29 */	bl setLookMode__11daNpc_grO_cFi
/* 809DCFB4  48 00 00 28 */	b lbl_809DCFDC
lbl_809DCFB8:
/* 809DCFB8  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809DCFBC  28 00 00 00 */	cmplwi r0, 0
/* 809DCFC0  41 82 00 1C */	beq lbl_809DCFDC
/* 809DCFC4  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 809DCFC8  2C 00 00 00 */	cmpwi r0, 0
/* 809DCFCC  40 82 00 10 */	bne lbl_809DCFDC
/* 809DCFD0  38 00 00 00 */	li r0, 0
/* 809DCFD4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 809DCFD8  98 1F 09 F0 */	stb r0, 0x9f0(r31)
lbl_809DCFDC:
/* 809DCFDC  88 1F 09 EF */	lbz r0, 0x9ef(r31)
/* 809DCFE0  28 00 00 09 */	cmplwi r0, 9
/* 809DCFE4  40 82 00 10 */	bne lbl_809DCFF4
/* 809DCFE8  38 00 00 02 */	li r0, 2
/* 809DCFEC  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 809DCFF0  48 00 00 0C */	b lbl_809DCFFC
lbl_809DCFF4:
/* 809DCFF4  38 00 00 00 */	li r0, 0
/* 809DCFF8  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
lbl_809DCFFC:
/* 809DCFFC  38 7F 0D D4 */	addi r3, r31, 0xdd4
/* 809DD000  4B 98 50 18 */	b __ptmf_test
/* 809DD004  2C 03 00 00 */	cmpwi r3, 0
/* 809DD008  41 82 00 54 */	beq lbl_809DD05C
/* 809DD00C  38 7F 0D E0 */	addi r3, r31, 0xde0
/* 809DD010  38 9F 0D D4 */	addi r4, r31, 0xdd4
/* 809DD014  4B 98 50 34 */	b __ptmf_cmpr
/* 809DD018  2C 03 00 00 */	cmpwi r3, 0
/* 809DD01C  40 82 00 1C */	bne lbl_809DD038
/* 809DD020  7F E3 FB 78 */	mr r3, r31
/* 809DD024  38 80 00 00 */	li r4, 0
/* 809DD028  39 9F 0D E0 */	addi r12, r31, 0xde0
/* 809DD02C  4B 98 50 58 */	b __ptmf_scall
/* 809DD030  60 00 00 00 */	nop 
/* 809DD034  48 00 00 28 */	b lbl_809DD05C
lbl_809DD038:
/* 809DD038  80 7F 0D D4 */	lwz r3, 0xdd4(r31)
/* 809DD03C  80 1F 0D D8 */	lwz r0, 0xdd8(r31)
/* 809DD040  90 61 00 08 */	stw r3, 8(r1)
/* 809DD044  90 01 00 0C */	stw r0, 0xc(r1)
/* 809DD048  80 1F 0D DC */	lwz r0, 0xddc(r31)
/* 809DD04C  90 01 00 10 */	stw r0, 0x10(r1)
/* 809DD050  7F E3 FB 78 */	mr r3, r31
/* 809DD054  38 81 00 08 */	addi r4, r1, 8
/* 809DD058  4B FF FD 79 */	bl setAction__11daNpc_grO_cFM11daNpc_grO_cFPCvPvPv_i
lbl_809DD05C:
/* 809DD05C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809DD060  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809DD064  7C 08 03 A6 */	mtlr r0
/* 809DD068  38 21 00 20 */	addi r1, r1, 0x20
/* 809DD06C  4E 80 00 20 */	blr 
