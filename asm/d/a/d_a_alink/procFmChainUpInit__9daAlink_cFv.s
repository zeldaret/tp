lbl_800E7C30:
/* 800E7C30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E7C34  7C 08 02 A6 */	mflr r0
/* 800E7C38  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E7C3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E7C40  7C 7F 1B 78 */	mr r31, r3
/* 800E7C44  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800E7C48  28 00 00 FF */	cmplwi r0, 0xff
/* 800E7C4C  41 82 00 14 */	beq lbl_800E7C60
/* 800E7C50  38 80 00 AE */	li r4, 0xae
/* 800E7C54  38 A0 00 00 */	li r5, 0
/* 800E7C58  4B FD B1 85 */	bl procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c
/* 800E7C5C  48 00 00 50 */	b lbl_800E7CAC
lbl_800E7C60:
/* 800E7C60  4B FF FD 99 */	bl searchFmChainPos__9daAlink_cFv
/* 800E7C64  98 7F 2F A3 */	stb r3, 0x2fa3(r31)
/* 800E7C68  88 1F 2F A3 */	lbz r0, 0x2fa3(r31)
/* 800E7C6C  28 00 00 00 */	cmplwi r0, 0
/* 800E7C70  40 82 00 10 */	bne lbl_800E7C80
/* 800E7C74  7F E3 FB 78 */	mr r3, r31
/* 800E7C78  4B FD B7 41 */	bl procWaitInit__9daAlink_cFv
/* 800E7C7C  48 00 00 30 */	b lbl_800E7CAC
lbl_800E7C80:
/* 800E7C80  7F E3 FB 78 */	mr r3, r31
/* 800E7C84  38 80 00 AE */	li r4, 0xae
/* 800E7C88  4B FD A2 E5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E7C8C  7F E3 FB 78 */	mr r3, r31
/* 800E7C90  38 80 01 81 */	li r4, 0x181
/* 800E7C94  3C A0 80 39 */	lis r5, m__21daAlinkHIO_fmChain_c0@ha /* 0x8038E7CC@ha */
/* 800E7C98  38 A5 E7 CC */	addi r5, r5, m__21daAlinkHIO_fmChain_c0@l /* 0x8038E7CC@l */
/* 800E7C9C  4B FC 54 59 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800E7CA0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E7CA4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800E7CA8  38 60 00 01 */	li r3, 1
lbl_800E7CAC:
/* 800E7CAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E7CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E7CB4  7C 08 03 A6 */	mtlr r0
/* 800E7CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 800E7CBC  4E 80 00 20 */	blr 
