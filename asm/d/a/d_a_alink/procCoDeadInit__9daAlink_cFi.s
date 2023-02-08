lbl_8011BE54:
/* 8011BE54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011BE58  7C 08 02 A6 */	mflr r0
/* 8011BE5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011BE60  39 61 00 20 */	addi r11, r1, 0x20
/* 8011BE64  48 24 63 79 */	bl _savegpr_29
/* 8011BE68  7C 7E 1B 78 */	mr r30, r3
/* 8011BE6C  7C 9D 23 78 */	mr r29, r4
/* 8011BE70  38 80 01 50 */	li r4, 0x150
/* 8011BE74  4B FA 6F 31 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011BE78  2C 03 00 00 */	cmpwi r3, 0
/* 8011BE7C  40 82 00 0C */	bne lbl_8011BE88
/* 8011BE80  38 60 00 01 */	li r3, 1
/* 8011BE84  48 00 03 18 */	b lbl_8011C19C
lbl_8011BE88:
/* 8011BE88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011BE8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011BE90  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8011BE94  7F C4 F3 78 */	mr r4, r30
/* 8011BE98  38 A0 00 00 */	li r5, 0
/* 8011BE9C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8011BEA0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8011BEA4  4B F2 72 C9 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 8011BEA8  38 00 00 05 */	li r0, 5
/* 8011BEAC  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 8011BEB0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011BEB4  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8011BEB8  38 00 00 00 */	li r0, 0
/* 8011BEBC  B0 1E 05 6C */	sth r0, 0x56c(r30)
/* 8011BEC0  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 8011BEC4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011BEC8  41 82 00 10 */	beq lbl_8011BED8
/* 8011BECC  38 00 00 02 */	li r0, 2
/* 8011BED0  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 8011BED4  48 00 00 0C */	b lbl_8011BEE0
lbl_8011BED8:
/* 8011BED8  38 00 00 02 */	li r0, 2
/* 8011BEDC  B0 1E 30 10 */	sth r0, 0x3010(r30)
lbl_8011BEE0:
/* 8011BEE0  7F C3 F3 78 */	mr r3, r30
/* 8011BEE4  4B FF CD 11 */	bl setDeadRideSyncPos__9daAlink_cFv
/* 8011BEE8  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 8011BEEC  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 8011BEF0  41 82 00 60 */	beq lbl_8011BF50
/* 8011BEF4  2C 1D 00 00 */	cmpwi r29, 0
/* 8011BEF8  41 82 00 4C */	beq lbl_8011BF44
/* 8011BEFC  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 8011BF00  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011BF04  41 82 00 24 */	beq lbl_8011BF28
/* 8011BF08  7F C3 F3 78 */	mr r3, r30
/* 8011BF0C  38 80 00 00 */	li r4, 0
/* 8011BF10  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 8011BF14  38 A5 EE 28 */	addi r5, r5, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 8011BF18  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 8011BF1C  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 8011BF20  48 00 D7 B9 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8011BF24  48 00 00 20 */	b lbl_8011BF44
lbl_8011BF28:
/* 8011BF28  7F C3 F3 78 */	mr r3, r30
/* 8011BF2C  38 80 00 19 */	li r4, 0x19
/* 8011BF30  3C A0 80 39 */	lis r5, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 8011BF34  38 A5 D6 BC */	addi r5, r5, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 8011BF38  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 8011BF3C  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 8011BF40  4B F9 10 A1 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_8011BF44:
/* 8011BF44  C0 02 96 70 */	lfs f0, lit_38059(r2)
/* 8011BF48  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 8011BF4C  48 00 02 00 */	b lbl_8011C14C
lbl_8011BF50:
/* 8011BF50  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 8011BF54  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011BF58  41 82 00 94 */	beq lbl_8011BFEC
/* 8011BF5C  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 8011BF60  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 8011BF64  41 82 00 50 */	beq lbl_8011BFB4
/* 8011BF68  7F C3 F3 78 */	mr r3, r30
/* 8011BF6C  38 80 00 7C */	li r4, 0x7c
/* 8011BF70  48 00 D7 09 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8011BF74  7F C3 F3 78 */	mr r3, r30
/* 8011BF78  38 80 00 9D */	li r4, 0x9d
/* 8011BF7C  4B F9 39 25 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 8011BF80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011BF84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011BF88  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8011BF8C  64 00 00 10 */	oris r0, r0, 0x10
/* 8011BF90  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 8011BF94  7F C3 F3 78 */	mr r3, r30
/* 8011BF98  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100B2@ha */
/* 8011BF9C  38 84 00 B2 */	addi r4, r4, 0x00B2 /* 0x000100B2@l */
/* 8011BFA0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8011BFA4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011BFA8  7D 89 03 A6 */	mtctr r12
/* 8011BFAC  4E 80 04 21 */	bctrl 
/* 8011BFB0  48 00 01 94 */	b lbl_8011C144
lbl_8011BFB4:
/* 8011BFB4  7F C3 F3 78 */	mr r3, r30
/* 8011BFB8  38 80 00 7B */	li r4, 0x7b
/* 8011BFBC  48 00 D6 BD */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8011BFC0  7F C3 F3 78 */	mr r3, r30
/* 8011BFC4  38 80 00 9C */	li r4, 0x9c
/* 8011BFC8  4B F9 38 D9 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 8011BFCC  7F C3 F3 78 */	mr r3, r30
/* 8011BFD0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010043@ha */
/* 8011BFD4  38 84 00 43 */	addi r4, r4, 0x0043 /* 0x00010043@l */
/* 8011BFD8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8011BFDC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011BFE0  7D 89 03 A6 */	mtctr r12
/* 8011BFE4  4E 80 04 21 */	bctrl 
/* 8011BFE8  48 00 01 5C */	b lbl_8011C144
lbl_8011BFEC:
/* 8011BFEC  80 7E 31 A0 */	lwz r3, 0x31a0(r30)
/* 8011BFF0  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 8011BFF4  41 82 00 BC */	beq lbl_8011C0B0
/* 8011BFF8  38 00 00 00 */	li r0, 0
/* 8011BFFC  88 7E 2F AA */	lbz r3, 0x2faa(r30)
/* 8011C000  28 03 00 01 */	cmplwi r3, 1
/* 8011C004  41 82 00 0C */	beq lbl_8011C010
/* 8011C008  28 03 00 02 */	cmplwi r3, 2
/* 8011C00C  40 82 00 08 */	bne lbl_8011C014
lbl_8011C010:
/* 8011C010  38 00 00 01 */	li r0, 1
lbl_8011C014:
/* 8011C014  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8011C018  41 82 00 78 */	beq lbl_8011C090
/* 8011C01C  3B E0 01 17 */	li r31, 0x117
/* 8011C020  A0 1E 1F 80 */	lhz r0, 0x1f80(r30)
/* 8011C024  28 00 00 19 */	cmplwi r0, 0x19
/* 8011C028  40 82 00 14 */	bne lbl_8011C03C
/* 8011C02C  7F C3 F3 78 */	mr r3, r30
/* 8011C030  38 80 00 02 */	li r4, 2
/* 8011C034  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 8011C038  4B F9 1A B5 */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
lbl_8011C03C:
/* 8011C03C  7F C3 F3 78 */	mr r3, r30
/* 8011C040  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8011C044  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8011C048  7D 89 03 A6 */	mtctr r12
/* 8011C04C  4E 80 04 21 */	bctrl 
/* 8011C050  28 03 00 00 */	cmplwi r3, 0
/* 8011C054  41 82 00 30 */	beq lbl_8011C084
/* 8011C058  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011C05C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011C060  80 83 5D B8 */	lwz r4, 0x5db8(r3)
/* 8011C064  38 00 00 03 */	li r0, 3
/* 8011C068  98 04 16 B8 */	stb r0, 0x16b8(r4)
/* 8011C06C  38 60 00 00 */	li r3, 0
/* 8011C070  90 64 17 28 */	stw r3, 0x1728(r4)
/* 8011C074  38 00 00 05 */	li r0, 5
/* 8011C078  90 04 17 40 */	stw r0, 0x1740(r4)
/* 8011C07C  90 64 17 28 */	stw r3, 0x1728(r4)
/* 8011C080  48 00 00 10 */	b lbl_8011C090
lbl_8011C084:
/* 8011C084  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011C088  80 7E 28 18 */	lwz r3, 0x2818(r30)
/* 8011C08C  D0 03 05 2C */	stfs f0, 0x52c(r3)
lbl_8011C090:
/* 8011C090  7F C3 F3 78 */	mr r3, r30
/* 8011C094  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010017@ha */
/* 8011C098  38 84 00 17 */	addi r4, r4, 0x0017 /* 0x00010017@l */
/* 8011C09C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8011C0A0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011C0A4  7D 89 03 A6 */	mtctr r12
/* 8011C0A8  4E 80 04 21 */	bctrl 
/* 8011C0AC  48 00 00 8C */	b lbl_8011C138
lbl_8011C0B0:
/* 8011C0B0  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 8011C0B4  41 82 00 50 */	beq lbl_8011C104
/* 8011C0B8  3B E0 01 18 */	li r31, 0x118
/* 8011C0BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011C0C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011C0C4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8011C0C8  64 00 00 10 */	oris r0, r0, 0x10
/* 8011C0CC  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 8011C0D0  7F C3 F3 78 */	mr r3, r30
/* 8011C0D4  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010017@ha */
/* 8011C0D8  38 84 00 17 */	addi r4, r4, 0x0017 /* 0x00010017@l */
/* 8011C0DC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8011C0E0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011C0E4  7D 89 03 A6 */	mtctr r12
/* 8011C0E8  4E 80 04 21 */	bctrl 
/* 8011C0EC  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8011C0F0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011C0F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011C0F8  40 80 00 40 */	bge lbl_8011C138
/* 8011C0FC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8011C100  48 00 00 38 */	b lbl_8011C138
lbl_8011C104:
/* 8011C104  3B E0 01 16 */	li r31, 0x116
/* 8011C108  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 8011C10C  64 00 02 00 */	oris r0, r0, 0x200
/* 8011C110  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 8011C114  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011C118  D0 1E 33 CC */	stfs f0, 0x33cc(r30)
/* 8011C11C  7F C3 F3 78 */	mr r3, r30
/* 8011C120  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010016@ha */
/* 8011C124  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x00010016@l */
/* 8011C128  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8011C12C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011C130  7D 89 03 A6 */	mtctr r12
/* 8011C134  4E 80 04 21 */	bctrl 
lbl_8011C138:
/* 8011C138  7F C3 F3 78 */	mr r3, r30
/* 8011C13C  7F E4 FB 78 */	mr r4, r31
/* 8011C140  4B F9 0E 41 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_8011C144:
/* 8011C144  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8011C148  D0 1E 34 78 */	stfs f0, 0x3478(r30)
lbl_8011C14C:
/* 8011C14C  38 80 00 00 */	li r4, 0
/* 8011C150  B0 9E 30 0E */	sth r4, 0x300e(r30)
/* 8011C154  B0 9E 30 08 */	sth r4, 0x3008(r30)
/* 8011C158  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011C15C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011C160  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8011C164  64 00 20 00 */	oris r0, r0, 0x2000
/* 8011C168  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 8011C16C  90 9E 28 F0 */	stw r4, 0x28f0(r30)
/* 8011C170  7F C3 F3 78 */	mr r3, r30
/* 8011C174  38 80 00 04 */	li r4, 4
/* 8011C178  48 00 50 49 */	bl setFootEffectProcType__9daAlink_cFi
/* 8011C17C  38 00 00 00 */	li r0, 0
/* 8011C180  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8011C184  B0 1E 30 80 */	sth r0, 0x3080(r30)
/* 8011C188  38 00 00 3F */	li r0, 0x3f
/* 8011C18C  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 8011C190  38 00 FF FF */	li r0, -1
/* 8011C194  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 8011C198  38 60 00 01 */	li r3, 1
lbl_8011C19C:
/* 8011C19C  39 61 00 20 */	addi r11, r1, 0x20
/* 8011C1A0  48 24 60 89 */	bl _restgpr_29
/* 8011C1A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011C1A8  7C 08 03 A6 */	mtlr r0
/* 8011C1AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8011C1B0  4E 80 00 20 */	blr 
