lbl_8062BDCC:
/* 8062BDCC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8062BDD0  7C 08 02 A6 */	mflr r0
/* 8062BDD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8062BDD8  39 61 00 40 */	addi r11, r1, 0x40
/* 8062BDDC  4B D3 63 E4 */	b _savegpr_22
/* 8062BDE0  7C 7F 1B 78 */	mr r31, r3
/* 8062BDE4  3C 60 80 63 */	lis r3, lit_3920@ha
/* 8062BDE8  3B C3 E6 34 */	addi r30, r3, lit_3920@l
/* 8062BDEC  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062BDF0  83 83 00 04 */	lwz r28, 4(r3)
/* 8062BDF4  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8062BDF8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062BDFC  38 63 00 F0 */	addi r3, r3, 0xf0
/* 8062BE00  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8062BE04  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8062BE08  4B D1 A6 A8 */	b PSMTXCopy
/* 8062BE0C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8062BE10  FC 40 08 90 */	fmr f2, f1
/* 8062BE14  FC 60 08 90 */	fmr f3, f1
/* 8062BE18  4B 9E 0F 84 */	b transM__14mDoMtx_stack_cFfff
/* 8062BE1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8062BE20  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
/* 8062BE24  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8062BE28  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8062BE2C  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8062BE30  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8062BE34  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8062BE38  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 8062BE3C  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 8062BE40  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 8062BE44  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8062BE48  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8062BE4C  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 8062BE50  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 8062BE54  80 1F 06 F0 */	lwz r0, 0x6f0(r31)
/* 8062BE58  2C 00 00 08 */	cmpwi r0, 8
/* 8062BE5C  40 80 00 18 */	bge lbl_8062BE74
/* 8062BE60  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 8062BE64  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 8062BE68  EC 01 00 2A */	fadds f0, f1, f0
/* 8062BE6C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8062BE70  48 00 00 14 */	b lbl_8062BE84
lbl_8062BE74:
/* 8062BE74  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 8062BE78  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 8062BE7C  EC 01 00 2A */	fadds f0, f1, f0
/* 8062BE80  D0 1F 05 54 */	stfs f0, 0x554(r31)
lbl_8062BE84:
/* 8062BE84  80 1F 0A 84 */	lwz r0, 0xa84(r31)
/* 8062BE88  2C 00 00 00 */	cmpwi r0, 0
/* 8062BE8C  40 82 01 8C */	bne lbl_8062C018
/* 8062BE90  3B 40 00 00 */	li r26, 0
/* 8062BE94  3B 20 00 00 */	li r25, 0
/* 8062BE98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062BE9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8062BEA0  3B 63 23 3C */	addi r27, r3, 0x233c
lbl_8062BEA4:
/* 8062BEA4  2C 1A 00 01 */	cmpwi r26, 1
/* 8062BEA8  41 82 00 9C */	beq lbl_8062BF44
/* 8062BEAC  40 80 00 10 */	bge lbl_8062BEBC
/* 8062BEB0  2C 1A 00 00 */	cmpwi r26, 0
/* 8062BEB4  40 80 00 14 */	bge lbl_8062BEC8
/* 8062BEB8  48 00 01 00 */	b lbl_8062BFB8
lbl_8062BEBC:
/* 8062BEBC  2C 1A 00 03 */	cmpwi r26, 3
/* 8062BEC0  40 80 00 F8 */	bge lbl_8062BFB8
/* 8062BEC4  48 00 00 B4 */	b lbl_8062BF78
lbl_8062BEC8:
/* 8062BEC8  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8062BECC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062BED0  38 63 00 F0 */	addi r3, r3, 0xf0
/* 8062BED4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8062BED8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8062BEDC  4B D1 A5 D4 */	b PSMTXCopy
/* 8062BEE0  80 1F 06 F0 */	lwz r0, 0x6f0(r31)
/* 8062BEE4  2C 00 00 08 */	cmpwi r0, 8
/* 8062BEE8  40 80 00 30 */	bge lbl_8062BF18
/* 8062BEEC  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 8062BEF0  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8062BEF4  FC 60 10 90 */	fmr f3, f2
/* 8062BEF8  4B 9E 0E A4 */	b transM__14mDoMtx_stack_cFfff
/* 8062BEFC  38 7F 2F EC */	addi r3, r31, 0x2fec
/* 8062BF00  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8062BF04  4B C4 38 04 */	b SetR__8cM3dGSphFf
/* 8062BF08  38 7F 33 94 */	addi r3, r31, 0x3394
/* 8062BF0C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8062BF10  4B C4 37 F8 */	b SetR__8cM3dGSphFf
/* 8062BF14  48 00 00 A4 */	b lbl_8062BFB8
lbl_8062BF18:
/* 8062BF18  C0 3E 01 40 */	lfs f1, 0x140(r30)
/* 8062BF1C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8062BF20  FC 60 10 90 */	fmr f3, f2
/* 8062BF24  4B 9E 0E 78 */	b transM__14mDoMtx_stack_cFfff
/* 8062BF28  38 7F 2F EC */	addi r3, r31, 0x2fec
/* 8062BF2C  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 8062BF30  4B C4 37 D8 */	b SetR__8cM3dGSphFf
/* 8062BF34  38 7F 33 94 */	addi r3, r31, 0x3394
/* 8062BF38  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 8062BF3C  4B C4 37 CC */	b SetR__8cM3dGSphFf
/* 8062BF40  48 00 00 78 */	b lbl_8062BFB8
lbl_8062BF44:
/* 8062BF44  38 7F 31 24 */	addi r3, r31, 0x3124
/* 8062BF48  C0 3E 02 7C */	lfs f1, 0x27c(r30)
/* 8062BF4C  4B C4 37 BC */	b SetR__8cM3dGSphFf
/* 8062BF50  38 7F 34 CC */	addi r3, r31, 0x34cc
/* 8062BF54  C0 3E 02 7C */	lfs f1, 0x27c(r30)
/* 8062BF58  4B C4 37 B0 */	b SetR__8cM3dGSphFf
/* 8062BF5C  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8062BF60  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062BF64  38 63 00 90 */	addi r3, r3, 0x90
/* 8062BF68  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8062BF6C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8062BF70  4B D1 A5 40 */	b PSMTXCopy
/* 8062BF74  48 00 00 44 */	b lbl_8062BFB8
lbl_8062BF78:
/* 8062BF78  38 7F 32 5C */	addi r3, r31, 0x325c
/* 8062BF7C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8062BF80  4B C4 37 88 */	b SetR__8cM3dGSphFf
/* 8062BF84  38 7F 36 04 */	addi r3, r31, 0x3604
/* 8062BF88  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8062BF8C  4B C4 37 7C */	b SetR__8cM3dGSphFf
/* 8062BF90  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8062BF94  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062BF98  38 63 03 60 */	addi r3, r3, 0x360
/* 8062BF9C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8062BFA0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8062BFA4  4B D1 A5 0C */	b PSMTXCopy
/* 8062BFA8  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 8062BFAC  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8062BFB0  FC 60 10 90 */	fmr f3, f2
/* 8062BFB4  4B 9E 0D E8 */	b transM__14mDoMtx_stack_cFfff
lbl_8062BFB8:
/* 8062BFB8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8062BFBC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8062BFC0  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8062BFC4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8062BFC8  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8062BFCC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8062BFD0  7F 1F CA 14 */	add r24, r31, r25
/* 8062BFD4  38 78 2F EC */	addi r3, r24, 0x2fec
/* 8062BFD8  38 81 00 08 */	addi r4, r1, 8
/* 8062BFDC  4B C4 36 6C */	b SetC__8cM3dGSphFRC4cXyz
/* 8062BFE0  38 78 33 94 */	addi r3, r24, 0x3394
/* 8062BFE4  38 81 00 08 */	addi r4, r1, 8
/* 8062BFE8  4B C4 36 60 */	b SetC__8cM3dGSphFRC4cXyz
/* 8062BFEC  7F 63 DB 78 */	mr r3, r27
/* 8062BFF0  38 98 2E C8 */	addi r4, r24, 0x2ec8
/* 8062BFF4  4B C3 8B B4 */	b Set__4cCcSFP8cCcD_Obj
/* 8062BFF8  7F 63 DB 78 */	mr r3, r27
/* 8062BFFC  38 98 32 70 */	addi r4, r24, 0x3270
/* 8062C000  4B C3 8B A8 */	b Set__4cCcSFP8cCcD_Obj
/* 8062C004  3B 5A 00 01 */	addi r26, r26, 1
/* 8062C008  2C 1A 00 03 */	cmpwi r26, 3
/* 8062C00C  3B 39 01 38 */	addi r25, r25, 0x138
/* 8062C010  41 80 FE 94 */	blt lbl_8062BEA4
/* 8062C014  48 00 00 3C */	b lbl_8062C050
lbl_8062C018:
/* 8062C018  3A E0 00 00 */	li r23, 0
lbl_8062C01C:
/* 8062C01C  38 7F 2E C8 */	addi r3, r31, 0x2ec8
/* 8062C020  81 9F 2F 04 */	lwz r12, 0x2f04(r31)
/* 8062C024  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8062C028  7D 89 03 A6 */	mtctr r12
/* 8062C02C  4E 80 04 21 */	bctrl 
/* 8062C030  38 7F 32 70 */	addi r3, r31, 0x3270
/* 8062C034  81 9F 32 AC */	lwz r12, 0x32ac(r31)
/* 8062C038  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8062C03C  7D 89 03 A6 */	mtctr r12
/* 8062C040  4E 80 04 21 */	bctrl 
/* 8062C044  3A F7 00 01 */	addi r23, r23, 1
/* 8062C048  2C 17 00 03 */	cmpwi r23, 3
/* 8062C04C  41 80 FF D0 */	blt lbl_8062C01C
lbl_8062C050:
/* 8062C050  80 1F 06 F0 */	lwz r0, 0x6f0(r31)
/* 8062C054  2C 00 00 08 */	cmpwi r0, 8
/* 8062C058  40 80 00 54 */	bge lbl_8062C0AC
/* 8062C05C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8062C060  D0 01 00 08 */	stfs f0, 8(r1)
/* 8062C064  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8062C068  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8062C06C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8062C070  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8062C074  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8062C078  EC 01 00 2A */	fadds f0, f1, f0
/* 8062C07C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8062C080  38 7F 3E 98 */	addi r3, r31, 0x3e98
/* 8062C084  38 81 00 08 */	addi r4, r1, 8
/* 8062C088  4B C4 35 C0 */	b SetC__8cM3dGSphFRC4cXyz
/* 8062C08C  38 7F 3E 98 */	addi r3, r31, 0x3e98
/* 8062C090  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8062C094  4B C4 36 74 */	b SetR__8cM3dGSphFf
/* 8062C098  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062C09C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8062C0A0  38 63 23 3C */	addi r3, r3, 0x233c
/* 8062C0A4  38 9F 3D 74 */	addi r4, r31, 0x3d74
/* 8062C0A8  4B C3 8B 00 */	b Set__4cCcSFP8cCcD_Obj
lbl_8062C0AC:
/* 8062C0AC  A0 7F 0A 16 */	lhz r3, 0xa16(r31)
/* 8062C0B0  28 03 00 01 */	cmplwi r3, 1
/* 8062C0B4  40 82 01 40 */	bne lbl_8062C1F4
/* 8062C0B8  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8062C0BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062C0C0  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 8062C0C4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8062C0C8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8062C0CC  4B D1 A3 E4 */	b PSMTXCopy
/* 8062C0D0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8062C0D4  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 8062C0D8  C0 7E 02 80 */	lfs f3, 0x280(r30)
/* 8062C0DC  4B 9E 0C C0 */	b transM__14mDoMtx_stack_cFfff
/* 8062C0E0  3A E0 00 00 */	li r23, 0
/* 8062C0E4  3B 40 00 00 */	li r26, 0
/* 8062C0E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062C0EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8062C0F0  3B 63 23 3C */	addi r27, r3, 0x233c
lbl_8062C0F4:
/* 8062C0F4  88 1F 0A A5 */	lbz r0, 0xaa5(r31)
/* 8062C0F8  28 00 00 00 */	cmplwi r0, 0
/* 8062C0FC  40 82 00 18 */	bne lbl_8062C114
/* 8062C100  C0 3E 02 30 */	lfs f1, 0x230(r30)
/* 8062C104  C0 5E 02 84 */	lfs f2, 0x284(r30)
/* 8062C108  C0 7E 01 90 */	lfs f3, 0x190(r30)
/* 8062C10C  4B 9E 0C 90 */	b transM__14mDoMtx_stack_cFfff
/* 8062C110  48 00 00 14 */	b lbl_8062C124
lbl_8062C114:
/* 8062C114  C0 3E 01 CC */	lfs f1, 0x1cc(r30)
/* 8062C118  C0 5E 02 18 */	lfs f2, 0x218(r30)
/* 8062C11C  C0 7E 02 14 */	lfs f3, 0x214(r30)
/* 8062C120  4B 9E 0C 7C */	b transM__14mDoMtx_stack_cFfff
lbl_8062C124:
/* 8062C124  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8062C128  D0 01 00 08 */	stfs f0, 8(r1)
/* 8062C12C  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8062C130  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8062C134  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8062C138  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8062C13C  7F 3F D2 14 */	add r25, r31, r26
/* 8062C140  3B 19 38 74 */	addi r24, r25, 0x3874
/* 8062C144  7F 03 C3 78 */	mr r3, r24
/* 8062C148  38 81 00 08 */	addi r4, r1, 8
/* 8062C14C  4B C4 34 FC */	b SetC__8cM3dGSphFRC4cXyz
/* 8062C150  80 1F 06 F4 */	lwz r0, 0x6f4(r31)
/* 8062C154  2C 00 00 01 */	cmpwi r0, 1
/* 8062C158  40 82 00 14 */	bne lbl_8062C16C
/* 8062C15C  7F 03 C3 78 */	mr r3, r24
/* 8062C160  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 8062C164  4B C4 35 A4 */	b SetR__8cM3dGSphFf
/* 8062C168  48 00 00 10 */	b lbl_8062C178
lbl_8062C16C:
/* 8062C16C  7F 03 C3 78 */	mr r3, r24
/* 8062C170  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8062C174  4B C4 35 94 */	b SetR__8cM3dGSphFf
lbl_8062C178:
/* 8062C178  7F 63 DB 78 */	mr r3, r27
/* 8062C17C  38 99 37 50 */	addi r4, r25, 0x3750
/* 8062C180  4B C3 8A 28 */	b Set__4cCcSFP8cCcD_Obj
/* 8062C184  3A F7 00 01 */	addi r23, r23, 1
/* 8062C188  2C 17 00 04 */	cmpwi r23, 4
/* 8062C18C  3B 5A 01 38 */	addi r26, r26, 0x138
/* 8062C190  41 80 FF 64 */	blt lbl_8062C0F4
/* 8062C194  80 1F 06 F4 */	lwz r0, 0x6f4(r31)
/* 8062C198  2C 00 00 01 */	cmpwi r0, 1
/* 8062C19C  40 82 00 1C */	bne lbl_8062C1B8
/* 8062C1A0  38 7F 3D 54 */	addi r3, r31, 0x3d54
/* 8062C1A4  38 9F 3E AC */	addi r4, r31, 0x3eac
/* 8062C1A8  38 A1 00 08 */	addi r5, r1, 8
/* 8062C1AC  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 8062C1B0  4B C4 2E 50 */	b Set__8cM3dGCpsFRC4cXyzRC4cXyzf
/* 8062C1B4  48 00 00 18 */	b lbl_8062C1CC
lbl_8062C1B8:
/* 8062C1B8  38 7F 3D 54 */	addi r3, r31, 0x3d54
/* 8062C1BC  38 9F 3E AC */	addi r4, r31, 0x3eac
/* 8062C1C0  38 A1 00 08 */	addi r5, r1, 8
/* 8062C1C4  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8062C1C8  4B C4 2E 38 */	b Set__8cM3dGCpsFRC4cXyzRC4cXyzf
lbl_8062C1CC:
/* 8062C1CC  C0 01 00 08 */	lfs f0, 8(r1)
/* 8062C1D0  D0 1F 3E AC */	stfs f0, 0x3eac(r31)
/* 8062C1D4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8062C1D8  D0 1F 3E B0 */	stfs f0, 0x3eb0(r31)
/* 8062C1DC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8062C1E0  D0 1F 3E B4 */	stfs f0, 0x3eb4(r31)
/* 8062C1E4  7F 63 DB 78 */	mr r3, r27
/* 8062C1E8  38 9F 3C 30 */	addi r4, r31, 0x3c30
/* 8062C1EC  4B C3 89 BC */	b Set__4cCcSFP8cCcD_Obj
/* 8062C1F0  48 00 01 C0 */	b lbl_8062C3B0
lbl_8062C1F4:
/* 8062C1F4  A0 1F 0A 1A */	lhz r0, 0xa1a(r31)
/* 8062C1F8  28 00 00 01 */	cmplwi r0, 1
/* 8062C1FC  40 82 00 E8 */	bne lbl_8062C2E4
/* 8062C200  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 8062C204  80 63 00 04 */	lwz r3, 4(r3)
/* 8062C208  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8062C20C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062C210  38 63 00 30 */	addi r3, r3, 0x30
/* 8062C214  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8062C218  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8062C21C  4B D1 A2 94 */	b PSMTXCopy
/* 8062C220  C0 3E 02 64 */	lfs f1, 0x264(r30)
/* 8062C224  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8062C228  FC 60 10 90 */	fmr f3, f2
/* 8062C22C  4B 9E 0B 70 */	b transM__14mDoMtx_stack_cFfff
/* 8062C230  3A E0 00 00 */	li r23, 0
/* 8062C234  3B 40 00 00 */	li r26, 0
/* 8062C238  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062C23C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8062C240  3B 63 23 3C */	addi r27, r3, 0x233c
lbl_8062C244:
/* 8062C244  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8062C248  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8062C24C  FC 60 10 90 */	fmr f3, f2
/* 8062C250  4B 9E 0B 4C */	b transM__14mDoMtx_stack_cFfff
/* 8062C254  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8062C258  D0 01 00 08 */	stfs f0, 8(r1)
/* 8062C25C  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8062C260  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8062C264  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8062C268  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8062C26C  7F 3F D2 14 */	add r25, r31, r26
/* 8062C270  3B 19 38 74 */	addi r24, r25, 0x3874
/* 8062C274  7F 03 C3 78 */	mr r3, r24
/* 8062C278  38 81 00 08 */	addi r4, r1, 8
/* 8062C27C  4B C4 33 CC */	b SetC__8cM3dGSphFRC4cXyz
/* 8062C280  7F 03 C3 78 */	mr r3, r24
/* 8062C284  C0 3E 01 F4 */	lfs f1, 0x1f4(r30)
/* 8062C288  4B C4 34 80 */	b SetR__8cM3dGSphFf
/* 8062C28C  7F 63 DB 78 */	mr r3, r27
/* 8062C290  38 99 37 50 */	addi r4, r25, 0x3750
/* 8062C294  4B C3 89 14 */	b Set__4cCcSFP8cCcD_Obj
/* 8062C298  3A F7 00 01 */	addi r23, r23, 1
/* 8062C29C  2C 17 00 04 */	cmpwi r23, 4
/* 8062C2A0  3B 5A 01 38 */	addi r26, r26, 0x138
/* 8062C2A4  41 80 FF A0 */	blt lbl_8062C244
/* 8062C2A8  38 7F 3D 54 */	addi r3, r31, 0x3d54
/* 8062C2AC  38 9F 3E AC */	addi r4, r31, 0x3eac
/* 8062C2B0  38 A1 00 08 */	addi r5, r1, 8
/* 8062C2B4  C0 3E 01 F4 */	lfs f1, 0x1f4(r30)
/* 8062C2B8  4B C4 2D 48 */	b Set__8cM3dGCpsFRC4cXyzRC4cXyzf
/* 8062C2BC  C0 01 00 08 */	lfs f0, 8(r1)
/* 8062C2C0  D0 1F 3E AC */	stfs f0, 0x3eac(r31)
/* 8062C2C4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8062C2C8  D0 1F 3E B0 */	stfs f0, 0x3eb0(r31)
/* 8062C2CC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8062C2D0  D0 1F 3E B4 */	stfs f0, 0x3eb4(r31)
/* 8062C2D4  7F 63 DB 78 */	mr r3, r27
/* 8062C2D8  38 9F 3C 30 */	addi r4, r31, 0x3c30
/* 8062C2DC  4B C3 88 CC */	b Set__4cCcSFP8cCcD_Obj
/* 8062C2E0  48 00 00 D0 */	b lbl_8062C3B0
lbl_8062C2E4:
/* 8062C2E4  28 03 00 03 */	cmplwi r3, 3
/* 8062C2E8  40 82 00 C8 */	bne lbl_8062C3B0
/* 8062C2EC  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 8062C2F0  38 63 00 24 */	addi r3, r3, 0x24
/* 8062C2F4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8062C2F8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8062C2FC  4B D1 A1 B4 */	b PSMTXCopy
/* 8062C300  3A E0 00 00 */	li r23, 0
/* 8062C304  3B 40 00 00 */	li r26, 0
/* 8062C308  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062C30C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8062C310  3B 63 23 3C */	addi r27, r3, 0x233c
lbl_8062C314:
/* 8062C314  C0 3E 01 4C */	lfs f1, 0x14c(r30)
/* 8062C318  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8062C31C  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 8062C320  4B 9E 0A 7C */	b transM__14mDoMtx_stack_cFfff
/* 8062C324  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8062C328  D0 01 00 08 */	stfs f0, 8(r1)
/* 8062C32C  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8062C330  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8062C334  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8062C338  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8062C33C  7F 3F D2 14 */	add r25, r31, r26
/* 8062C340  3B 19 38 74 */	addi r24, r25, 0x3874
/* 8062C344  7F 03 C3 78 */	mr r3, r24
/* 8062C348  38 81 00 08 */	addi r4, r1, 8
/* 8062C34C  4B C4 32 FC */	b SetC__8cM3dGSphFRC4cXyz
/* 8062C350  7F 03 C3 78 */	mr r3, r24
/* 8062C354  C0 3E 01 F4 */	lfs f1, 0x1f4(r30)
/* 8062C358  4B C4 33 B0 */	b SetR__8cM3dGSphFf
/* 8062C35C  7F 63 DB 78 */	mr r3, r27
/* 8062C360  38 99 37 50 */	addi r4, r25, 0x3750
/* 8062C364  4B C3 88 44 */	b Set__4cCcSFP8cCcD_Obj
/* 8062C368  3A F7 00 01 */	addi r23, r23, 1
/* 8062C36C  2C 17 00 04 */	cmpwi r23, 4
/* 8062C370  3B 5A 01 38 */	addi r26, r26, 0x138
/* 8062C374  41 80 FF A0 */	blt lbl_8062C314
/* 8062C378  38 7F 3D 54 */	addi r3, r31, 0x3d54
/* 8062C37C  38 9F 3E AC */	addi r4, r31, 0x3eac
/* 8062C380  38 A1 00 08 */	addi r5, r1, 8
/* 8062C384  C0 3E 01 F4 */	lfs f1, 0x1f4(r30)
/* 8062C388  4B C4 2C 78 */	b Set__8cM3dGCpsFRC4cXyzRC4cXyzf
/* 8062C38C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8062C390  D0 1F 3E AC */	stfs f0, 0x3eac(r31)
/* 8062C394  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8062C398  D0 1F 3E B0 */	stfs f0, 0x3eb0(r31)
/* 8062C39C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8062C3A0  D0 1F 3E B4 */	stfs f0, 0x3eb4(r31)
/* 8062C3A4  7F 63 DB 78 */	mr r3, r27
/* 8062C3A8  38 9F 3C 30 */	addi r4, r31, 0x3c30
/* 8062C3AC  4B C3 87 FC */	b Set__4cCcSFP8cCcD_Obj
lbl_8062C3B0:
/* 8062C3B0  A0 1F 0A 14 */	lhz r0, 0xa14(r31)
/* 8062C3B4  28 00 00 00 */	cmplwi r0, 0
/* 8062C3B8  40 82 00 AC */	bne lbl_8062C464
/* 8062C3BC  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8062C3C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062C3C4  38 63 01 B0 */	addi r3, r3, 0x1b0
/* 8062C3C8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8062C3CC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8062C3D0  4B D1 A0 E0 */	b PSMTXCopy
/* 8062C3D4  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8062C3D8  C0 5E 02 88 */	lfs f2, 0x288(r30)
/* 8062C3DC  C0 7E 00 04 */	lfs f3, 4(r30)
/* 8062C3E0  4B 9E 09 BC */	b transM__14mDoMtx_stack_cFfff
/* 8062C3E4  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8062C3E8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8062C3EC  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8062C3F0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8062C3F4  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8062C3F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8062C3FC  38 7F 37 3C */	addi r3, r31, 0x373c
/* 8062C400  38 81 00 08 */	addi r4, r1, 8
/* 8062C404  4B C4 32 44 */	b SetC__8cM3dGSphFRC4cXyz
/* 8062C408  80 1F 36 18 */	lwz r0, 0x3618(r31)
/* 8062C40C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8062C410  41 82 00 14 */	beq lbl_8062C424
/* 8062C414  38 7F 37 3C */	addi r3, r31, 0x373c
/* 8062C418  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 8062C41C  4B C4 32 EC */	b SetR__8cM3dGSphFf
/* 8062C420  48 00 00 2C */	b lbl_8062C44C
lbl_8062C424:
/* 8062C424  88 1F 0A A0 */	lbz r0, 0xaa0(r31)
/* 8062C428  28 00 00 00 */	cmplwi r0, 0
/* 8062C42C  40 82 00 14 */	bne lbl_8062C440
/* 8062C430  38 7F 37 3C */	addi r3, r31, 0x373c
/* 8062C434  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8062C438  4B C4 32 D0 */	b SetR__8cM3dGSphFf
/* 8062C43C  48 00 00 10 */	b lbl_8062C44C
lbl_8062C440:
/* 8062C440  38 7F 37 3C */	addi r3, r31, 0x373c
/* 8062C444  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 8062C448  4B C4 32 C0 */	b SetR__8cM3dGSphFf
lbl_8062C44C:
/* 8062C44C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062C450  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8062C454  38 63 23 3C */	addi r3, r3, 0x233c
/* 8062C458  38 9F 36 18 */	addi r4, r31, 0x3618
/* 8062C45C  4B C3 87 4C */	b Set__4cCcSFP8cCcD_Obj
/* 8062C460  48 00 00 90 */	b lbl_8062C4F0
lbl_8062C464:
/* 8062C464  80 1F 36 18 */	lwz r0, 0x3618(r31)
/* 8062C468  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8062C46C  41 82 00 70 */	beq lbl_8062C4DC
/* 8062C470  80 1F 06 F0 */	lwz r0, 0x6f0(r31)
/* 8062C474  2C 00 00 08 */	cmpwi r0, 8
/* 8062C478  40 81 00 64 */	ble lbl_8062C4DC
/* 8062C47C  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8062C480  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062C484  38 63 04 80 */	addi r3, r3, 0x480
/* 8062C488  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8062C48C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8062C490  4B D1 A0 20 */	b PSMTXCopy
/* 8062C494  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8062C498  D0 01 00 08 */	stfs f0, 8(r1)
/* 8062C49C  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8062C4A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8062C4A4  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8062C4A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8062C4AC  38 7F 37 3C */	addi r3, r31, 0x373c
/* 8062C4B0  38 81 00 08 */	addi r4, r1, 8
/* 8062C4B4  4B C4 31 94 */	b SetC__8cM3dGSphFRC4cXyz
/* 8062C4B8  38 7F 37 3C */	addi r3, r31, 0x373c
/* 8062C4BC  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 8062C4C0  4B C4 32 48 */	b SetR__8cM3dGSphFf
/* 8062C4C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062C4C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8062C4CC  38 63 23 3C */	addi r3, r3, 0x233c
/* 8062C4D0  38 9F 36 18 */	addi r4, r31, 0x3618
/* 8062C4D4  4B C3 86 D4 */	b Set__4cCcSFP8cCcD_Obj
/* 8062C4D8  48 00 00 18 */	b lbl_8062C4F0
lbl_8062C4DC:
/* 8062C4DC  38 7F 36 18 */	addi r3, r31, 0x3618
/* 8062C4E0  81 9F 36 54 */	lwz r12, 0x3654(r31)
/* 8062C4E4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8062C4E8  7D 89 03 A6 */	mtctr r12
/* 8062C4EC  4E 80 04 21 */	bctrl 
lbl_8062C4F0:
/* 8062C4F0  3A C0 00 00 */	li r22, 0
/* 8062C4F4  3B 40 00 00 */	li r26, 0
/* 8062C4F8  3B 60 00 00 */	li r27, 0
/* 8062C4FC  3B 80 00 00 */	li r28, 0
/* 8062C500  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062C504  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8062C508  3B 23 23 3C */	addi r25, r3, 0x233c
lbl_8062C50C:
/* 8062C50C  38 1C 09 FC */	addi r0, r28, 0x9fc
/* 8062C510  7C 1F 02 2E */	lhzx r0, r31, r0
/* 8062C514  28 00 00 05 */	cmplwi r0, 5
/* 8062C518  40 82 00 6C */	bne lbl_8062C584
/* 8062C51C  38 7B 07 5C */	addi r3, r27, 0x75c
/* 8062C520  7C 7F 1A 14 */	add r3, r31, r3
/* 8062C524  4B 9E 08 40 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8062C528  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8062C52C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8062C530  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8062C534  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8062C538  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8062C53C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8062C540  7E FF D2 14 */	add r23, r31, r26
/* 8062C544  3B 17 43 C0 */	addi r24, r23, 0x43c0
/* 8062C548  7F 03 C3 78 */	mr r3, r24
/* 8062C54C  38 81 00 08 */	addi r4, r1, 8
/* 8062C550  4B C4 30 F8 */	b SetC__8cM3dGSphFRC4cXyz
/* 8062C554  2C 16 00 0C */	cmpwi r22, 0xc
/* 8062C558  40 82 00 14 */	bne lbl_8062C56C
/* 8062C55C  7F 03 C3 78 */	mr r3, r24
/* 8062C560  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 8062C564  4B C4 31 A4 */	b SetR__8cM3dGSphFf
/* 8062C568  48 00 00 10 */	b lbl_8062C578
lbl_8062C56C:
/* 8062C56C  7F 03 C3 78 */	mr r3, r24
/* 8062C570  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 8062C574  4B C4 31 94 */	b SetR__8cM3dGSphFf
lbl_8062C578:
/* 8062C578  7F 23 CB 78 */	mr r3, r25
/* 8062C57C  38 97 42 9C */	addi r4, r23, 0x429c
/* 8062C580  4B C3 86 28 */	b Set__4cCcSFP8cCcD_Obj
lbl_8062C584:
/* 8062C584  3A D6 00 01 */	addi r22, r22, 1
/* 8062C588  2C 16 00 0D */	cmpwi r22, 0xd
/* 8062C58C  3B 5A 01 38 */	addi r26, r26, 0x138
/* 8062C590  3B 7B 00 0C */	addi r27, r27, 0xc
/* 8062C594  3B 9C 00 02 */	addi r28, r28, 2
/* 8062C598  41 80 FF 74 */	blt lbl_8062C50C
/* 8062C59C  39 61 00 40 */	addi r11, r1, 0x40
/* 8062C5A0  4B D3 5C 6C */	b _restgpr_22
/* 8062C5A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8062C5A8  7C 08 03 A6 */	mtlr r0
/* 8062C5AC  38 21 00 40 */	addi r1, r1, 0x40
/* 8062C5B0  4E 80 00 20 */	blr 
