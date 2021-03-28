lbl_8001BF64:
/* 8001BF64  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8001BF68  7C 08 02 A6 */	mflr r0
/* 8001BF6C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8001BF70  39 61 00 40 */	addi r11, r1, 0x40
/* 8001BF74  48 34 62 51 */	bl _savegpr_23
/* 8001BF78  7C 77 1B 78 */	mr r23, r3
/* 8001BF7C  7C B8 2B 78 */	mr r24, r5
/* 8001BF80  7C D9 33 78 */	mr r25, r6
/* 8001BF84  7C FA 3B 78 */	mr r26, r7
/* 8001BF88  7D 1B 43 78 */	mr r27, r8
/* 8001BF8C  7D 3C 4B 78 */	mr r28, r9
/* 8001BF90  7D 5D 53 78 */	mr r29, r10
/* 8001BF94  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8001BF98  8B E1 00 4F */	lbz r31, 0x4f(r1)
/* 8001BF9C  2C 04 00 FF */	cmpwi r4, 0xff
/* 8001BFA0  40 82 00 0C */	bne lbl_8001BFAC
/* 8001BFA4  38 60 FF FF */	li r3, -1
/* 8001BFA8  48 00 00 B8 */	b lbl_8001C060
lbl_8001BFAC:
/* 8001BFAC  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8001BFB0  4B FF FD 4D */	bl fopAcM_getItemNoFromTableNo__FUc
/* 8001BFB4  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8001BFB8  2C 04 00 FF */	cmpwi r4, 0xff
/* 8001BFBC  40 82 00 0C */	bne lbl_8001BFC8
/* 8001BFC0  38 60 FF FF */	li r3, -1
/* 8001BFC4  48 00 00 9C */	b lbl_8001C060
lbl_8001BFC8:
/* 8001BFC8  28 1F 00 00 */	cmplwi r31, 0
/* 8001BFCC  41 82 00 24 */	beq lbl_8001BFF0
/* 8001BFD0  7E E3 BB 78 */	mr r3, r23
/* 8001BFD4  7F 25 CB 78 */	mr r5, r25
/* 8001BFD8  38 C0 00 00 */	li r6, 0
/* 8001BFDC  38 E0 00 00 */	li r7, 0
/* 8001BFE0  C0 22 82 04 */	lfs f1, lit_4645(r2)
/* 8001BFE4  FC 40 08 90 */	fmr f2, f1
/* 8001BFE8  48 00 01 D1 */	bl fopAcM_createItemForDirectGet__FPC4cXyziiPC5csXyzPC4cXyzff
/* 8001BFEC  48 00 00 60 */	b lbl_8001C04C
lbl_8001BFF0:
/* 8001BFF0  28 1D 00 00 */	cmplwi r29, 0
/* 8001BFF4  40 82 00 2C */	bne lbl_8001C020
/* 8001BFF8  28 1E 00 00 */	cmplwi r30, 0
/* 8001BFFC  40 82 00 24 */	bne lbl_8001C020
/* 8001C000  7E E3 BB 78 */	mr r3, r23
/* 8001C004  7F 05 C3 78 */	mr r5, r24
/* 8001C008  7F 26 CB 78 */	mr r6, r25
/* 8001C00C  7F 67 DB 78 */	mr r7, r27
/* 8001C010  7F 48 D3 78 */	mr r8, r26
/* 8001C014  7F 89 E3 78 */	mr r9, r28
/* 8001C018  48 00 03 C9 */	bl fopAcM_fastCreateItem2__FPC4cXyziiiiPC5csXyzPC4cXyz
/* 8001C01C  48 00 00 30 */	b lbl_8001C04C
lbl_8001C020:
/* 8001C020  93 61 00 08 */	stw r27, 8(r1)
/* 8001C024  38 00 00 00 */	li r0, 0
/* 8001C028  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001C02C  7E E3 BB 78 */	mr r3, r23
/* 8001C030  7F 25 CB 78 */	mr r5, r25
/* 8001C034  7F 46 D3 78 */	mr r6, r26
/* 8001C038  7F 87 E3 78 */	mr r7, r28
/* 8001C03C  7F A8 EB 78 */	mr r8, r29
/* 8001C040  7F C9 F3 78 */	mr r9, r30
/* 8001C044  7F 0A C3 78 */	mr r10, r24
/* 8001C048  48 00 05 69 */	bl fopAcM_fastCreateItem__FPC4cXyziiPC5csXyzPC4cXyzPfPfiiPFPv_i
lbl_8001C04C:
/* 8001C04C  28 03 00 00 */	cmplwi r3, 0
/* 8001C050  41 82 00 0C */	beq lbl_8001C05C
/* 8001C054  80 63 00 04 */	lwz r3, 4(r3)
/* 8001C058  48 00 00 08 */	b lbl_8001C060
lbl_8001C05C:
/* 8001C05C  38 60 FF FF */	li r3, -1
lbl_8001C060:
/* 8001C060  39 61 00 40 */	addi r11, r1, 0x40
/* 8001C064  48 34 61 AD */	bl _restgpr_23
/* 8001C068  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8001C06C  7C 08 03 A6 */	mtlr r0
/* 8001C070  38 21 00 40 */	addi r1, r1, 0x40
/* 8001C074  4E 80 00 20 */	blr 
