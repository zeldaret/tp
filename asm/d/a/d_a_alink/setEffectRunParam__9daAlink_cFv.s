lbl_80120B00:
/* 80120B00  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80120B04  7C 08 02 A6 */	mflr r0
/* 80120B08  90 01 00 84 */	stw r0, 0x84(r1)
/* 80120B0C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80120B10  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80120B14  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80120B18  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80120B1C  39 61 00 60 */	addi r11, r1, 0x60
/* 80120B20  48 24 16 A1 */	bl _savegpr_22
/* 80120B24  7C 7D 1B 78 */	mr r29, r3
/* 80120B28  3C 60 80 39 */	lis r3, lit_3757@ha /* 0x8038D658@ha */
/* 80120B2C  3B 23 D6 58 */	addi r25, r3, lit_3757@l /* 0x8038D658@l */
/* 80120B30  3B C0 00 00 */	li r30, 0
/* 80120B34  3B 80 00 00 */	li r28, 0
/* 80120B38  3C 60 80 3B */	lis r3, m_typeFourData__8dPaPoF_c@ha /* 0x803A86D0@ha */
/* 80120B3C  3B 43 86 D0 */	addi r26, r3, m_typeFourData__8dPaPoF_c@l /* 0x803A86D0@l */
/* 80120B40  3C 60 80 3B */	lis r3, m_emitterFourData__8dPaPoF_c@ha /* 0x803A8748@ha */
/* 80120B44  3B 63 87 48 */	addi r27, r3, m_emitterFourData__8dPaPoF_c@l /* 0x803A8748@l */
lbl_80120B48:
/* 80120B48  3B E0 00 00 */	li r31, 0
/* 80120B4C  7F 1A E2 14 */	add r24, r26, r28
/* 80120B50  7E FB E2 14 */	add r23, r27, r28
lbl_80120B54:
/* 80120B54  38 7D 2E 54 */	addi r3, r29, 0x2e54
/* 80120B58  7F E4 FB 78 */	mr r4, r31
/* 80120B5C  7F 0C C3 78 */	mr r12, r24
/* 80120B60  48 24 15 25 */	bl __ptmf_scall
/* 80120B64  60 00 00 00 */	nop 
/* 80120B68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80120B6C  40 82 00 30 */	bne lbl_80120B9C
/* 80120B70  38 7D 2E 54 */	addi r3, r29, 0x2e54
/* 80120B74  7F E4 FB 78 */	mr r4, r31
/* 80120B78  38 A0 00 00 */	li r5, 0
/* 80120B7C  7E EC BB 78 */	mr r12, r23
/* 80120B80  48 24 15 05 */	bl __ptmf_scall
/* 80120B84  60 00 00 00 */	nop 
/* 80120B88  28 03 00 00 */	cmplwi r3, 0
/* 80120B8C  41 82 01 E0 */	beq lbl_80120D6C
/* 80120B90  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 80120B94  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80120B98  48 00 01 D4 */	b lbl_80120D6C
lbl_80120B9C:
/* 80120B9C  28 00 00 01 */	cmplwi r0, 1
/* 80120BA0  40 82 00 30 */	bne lbl_80120BD0
/* 80120BA4  38 7D 2E 54 */	addi r3, r29, 0x2e54
/* 80120BA8  7F E4 FB 78 */	mr r4, r31
/* 80120BAC  38 A0 00 00 */	li r5, 0
/* 80120BB0  7E EC BB 78 */	mr r12, r23
/* 80120BB4  48 24 14 D1 */	bl __ptmf_scall
/* 80120BB8  60 00 00 00 */	nop 
/* 80120BBC  28 03 00 00 */	cmplwi r3, 0
/* 80120BC0  41 82 01 AC */	beq lbl_80120D6C
/* 80120BC4  C0 02 93 24 */	lfs f0, lit_7450(r2)
/* 80120BC8  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80120BCC  48 00 01 A0 */	b lbl_80120D6C
lbl_80120BD0:
/* 80120BD0  28 00 00 02 */	cmplwi r0, 2
/* 80120BD4  40 82 00 68 */	bne lbl_80120C3C
/* 80120BD8  3A C0 00 00 */	li r22, 0
/* 80120BDC  38 79 45 6C */	addi r3, r25, 0x456c
/* 80120BE0  E3 C3 00 00 */	psq_l f30, 0(r3), 0, 0 /* qr0 */
/* 80120BE4  C3 E3 00 08 */	lfs f31, 8(r3)
lbl_80120BE8:
/* 80120BE8  38 7D 2E 54 */	addi r3, r29, 0x2e54
/* 80120BEC  7F E4 FB 78 */	mr r4, r31
/* 80120BF0  7E C5 B3 78 */	mr r5, r22
/* 80120BF4  7E EC BB 78 */	mr r12, r23
/* 80120BF8  48 24 14 8D */	bl __ptmf_scall
/* 80120BFC  60 00 00 00 */	nop 
/* 80120C00  28 03 00 00 */	cmplwi r3, 0
/* 80120C04  41 82 01 68 */	beq lbl_80120D6C
/* 80120C08  F3 C1 00 20 */	psq_st f30, 32(r1), 0, 0 /* qr0 */
/* 80120C0C  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80120C10  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80120C14  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 80120C18  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80120C1C  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 80120C20  D3 E3 00 A0 */	stfs f31, 0xa0(r3)
/* 80120C24  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 80120C28  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 80120C2C  3A D6 00 01 */	addi r22, r22, 1
/* 80120C30  2C 16 00 04 */	cmpwi r22, 4
/* 80120C34  41 80 FF B4 */	blt lbl_80120BE8
/* 80120C38  48 00 01 34 */	b lbl_80120D6C
lbl_80120C3C:
/* 80120C3C  28 00 00 05 */	cmplwi r0, 5
/* 80120C40  40 82 00 68 */	bne lbl_80120CA8
/* 80120C44  38 7D 2E 54 */	addi r3, r29, 0x2e54
/* 80120C48  7F E4 FB 78 */	mr r4, r31
/* 80120C4C  38 A0 00 00 */	li r5, 0
/* 80120C50  7E EC BB 78 */	mr r12, r23
/* 80120C54  48 24 14 31 */	bl __ptmf_scall
/* 80120C58  60 00 00 00 */	nop 
/* 80120C5C  28 03 00 00 */	cmplwi r3, 0
/* 80120C60  41 82 01 0C */	beq lbl_80120D6C
/* 80120C64  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 80120C68  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80120C6C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80120C70  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80120C74  38 99 45 84 */	addi r4, r25, 0x4584
/* 80120C78  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0 /* qr0 */
/* 80120C7C  C0 44 00 08 */	lfs f2, 8(r4)
/* 80120C80  F0 01 00 14 */	psq_st f0, 20(r1), 0, 0 /* qr0 */
/* 80120C84  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80120C88  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80120C8C  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 80120C90  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80120C94  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 80120C98  D0 43 00 A0 */	stfs f2, 0xa0(r3)
/* 80120C9C  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 80120CA0  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 80120CA4  48 00 00 C8 */	b lbl_80120D6C
lbl_80120CA8:
/* 80120CA8  28 00 00 10 */	cmplwi r0, 0x10
/* 80120CAC  40 82 00 68 */	bne lbl_80120D14
/* 80120CB0  3A C0 00 00 */	li r22, 0
/* 80120CB4  38 79 45 78 */	addi r3, r25, 0x4578
/* 80120CB8  E3 E3 00 00 */	psq_l f31, 0(r3), 0, 0 /* qr0 */
/* 80120CBC  C3 C3 00 08 */	lfs f30, 8(r3)
lbl_80120CC0:
/* 80120CC0  38 7D 2E 54 */	addi r3, r29, 0x2e54
/* 80120CC4  7F E4 FB 78 */	mr r4, r31
/* 80120CC8  7E C5 B3 78 */	mr r5, r22
/* 80120CCC  7E EC BB 78 */	mr r12, r23
/* 80120CD0  48 24 13 B5 */	bl __ptmf_scall
/* 80120CD4  60 00 00 00 */	nop 
/* 80120CD8  28 03 00 00 */	cmplwi r3, 0
/* 80120CDC  41 82 00 90 */	beq lbl_80120D6C
/* 80120CE0  F3 E1 00 08 */	psq_st f31, 8(r1), 0, 0 /* qr0 */
/* 80120CE4  D3 C1 00 10 */	stfs f30, 0x10(r1)
/* 80120CE8  C0 21 00 08 */	lfs f1, 8(r1)
/* 80120CEC  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 80120CF0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80120CF4  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 80120CF8  D3 C3 00 A0 */	stfs f30, 0xa0(r3)
/* 80120CFC  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 80120D00  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 80120D04  3A D6 00 01 */	addi r22, r22, 1
/* 80120D08  2C 16 00 04 */	cmpwi r22, 4
/* 80120D0C  41 80 FF B4 */	blt lbl_80120CC0
/* 80120D10  48 00 00 5C */	b lbl_80120D6C
lbl_80120D14:
/* 80120D14  28 00 00 03 */	cmplwi r0, 3
/* 80120D18  40 82 00 54 */	bne lbl_80120D6C
/* 80120D1C  38 7D 2E 54 */	addi r3, r29, 0x2e54
/* 80120D20  7F E4 FB 78 */	mr r4, r31
/* 80120D24  38 A0 00 00 */	li r5, 0
/* 80120D28  7E EC BB 78 */	mr r12, r23
/* 80120D2C  48 24 13 59 */	bl __ptmf_scall
/* 80120D30  60 00 00 00 */	nop 
/* 80120D34  28 03 00 00 */	cmplwi r3, 0
/* 80120D38  41 82 00 34 */	beq lbl_80120D6C
/* 80120D3C  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80120D40  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80120D44  41 82 00 20 */	beq lbl_80120D64
/* 80120D48  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 80120D4C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80120D50  C0 02 93 8C */	lfs f0, lit_8783(r2)
/* 80120D54  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 80120D58  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 80120D5C  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 80120D60  48 00 00 0C */	b lbl_80120D6C
lbl_80120D64:
/* 80120D64  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 80120D68  D0 03 00 28 */	stfs f0, 0x28(r3)
lbl_80120D6C:
/* 80120D6C  3B FF 00 01 */	addi r31, r31, 1
/* 80120D70  2C 1F 00 02 */	cmpwi r31, 2
/* 80120D74  41 80 FD E0 */	blt lbl_80120B54
/* 80120D78  3B DE 00 01 */	addi r30, r30, 1
/* 80120D7C  2C 1E 00 05 */	cmpwi r30, 5
/* 80120D80  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80120D84  41 80 FD C4 */	blt lbl_80120B48
/* 80120D88  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80120D8C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80120D90  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80120D94  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80120D98  39 61 00 60 */	addi r11, r1, 0x60
/* 80120D9C  48 24 14 71 */	bl _restgpr_22
/* 80120DA0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80120DA4  7C 08 03 A6 */	mtlr r0
/* 80120DA8  38 21 00 80 */	addi r1, r1, 0x80
/* 80120DAC  4E 80 00 20 */	blr 
