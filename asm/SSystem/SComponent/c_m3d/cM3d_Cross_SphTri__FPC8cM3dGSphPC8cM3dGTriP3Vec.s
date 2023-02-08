lbl_8026BF04:
/* 8026BF04  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8026BF08  7C 08 02 A6 */	mflr r0
/* 8026BF0C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8026BF10  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8026BF14  48 0F 62 C9 */	bl _savegpr_29
/* 8026BF18  7C 7D 1B 78 */	mr r29, r3
/* 8026BF1C  7C 9E 23 78 */	mr r30, r4
/* 8026BF20  7C BF 2B 78 */	mr r31, r5
/* 8026BF24  38 7E 00 14 */	addi r3, r30, 0x14
/* 8026BF28  38 9E 00 20 */	addi r4, r30, 0x20
/* 8026BF2C  38 BE 00 2C */	addi r5, r30, 0x2c
/* 8026BF30  7F A6 EB 78 */	mr r6, r29
/* 8026BF34  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8026BF38  4B FF DC F5 */	bl cM3d_InclusionCheckPosIn3PosBox3d__FPC3VecPC3VecPC3VecPC3Vecf
/* 8026BF3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026BF40  40 82 00 0C */	bne lbl_8026BF4C
/* 8026BF44  38 60 00 00 */	li r3, 0
/* 8026BF48  48 00 02 CC */	b lbl_8026C214
lbl_8026BF4C:
/* 8026BF4C  7F C3 F3 78 */	mr r3, r30
/* 8026BF50  7F A4 EB 78 */	mr r4, r29
/* 8026BF54  4B FF C8 C1 */	bl cM3d_SignedLenPlaAndPos__FPC8cM3dGPlaPC3Vec
/* 8026BF58  FC 00 0A 10 */	fabs f0, f1
/* 8026BF5C  FC 40 00 18 */	frsp f2, f0
/* 8026BF60  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026BF64  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8026BF68  40 81 00 0C */	ble lbl_8026BF74
/* 8026BF6C  38 60 00 00 */	li r3, 0
/* 8026BF70  48 00 02 A4 */	b lbl_8026C214
lbl_8026BF74:
/* 8026BF74  7F C3 F3 78 */	mr r3, r30
/* 8026BF78  38 81 00 74 */	addi r4, r1, 0x74
/* 8026BF7C  48 0D B1 5D */	bl PSVECScale
/* 8026BF80  7F A3 EB 78 */	mr r3, r29
/* 8026BF84  38 81 00 74 */	addi r4, r1, 0x74
/* 8026BF88  38 A1 00 80 */	addi r5, r1, 0x80
/* 8026BF8C  48 0D B1 29 */	bl PSVECSubtract
/* 8026BF90  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8026BF94  FC 00 02 10 */	fabs f0, f0
/* 8026BF98  FC 00 00 18 */	frsp f0, f0
/* 8026BF9C  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026BFA0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026BFA4  40 81 00 3C */	ble lbl_8026BFE0
/* 8026BFA8  7F C3 F3 78 */	mr r3, r30
/* 8026BFAC  38 81 00 80 */	addi r4, r1, 0x80
/* 8026BFB0  C0 22 B7 18 */	lfs f1, lit_2256(r2)
/* 8026BFB4  4B FF E9 91 */	bl cM3d_CrossY_Tri__FPC8cM3dGTriPC3Vecf
/* 8026BFB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026BFBC  41 82 00 A8 */	beq lbl_8026C064
/* 8026BFC0  28 1F 00 00 */	cmplwi r31, 0
/* 8026BFC4  41 82 00 14 */	beq lbl_8026BFD8
/* 8026BFC8  7F A3 EB 78 */	mr r3, r29
/* 8026BFCC  7F C4 F3 78 */	mr r4, r30
/* 8026BFD0  7F E5 FB 78 */	mr r5, r31
/* 8026BFD4  4B FF FE 89 */	bl cM3d_CalcSphVsTriCrossPoint__FPC8cM3dGSphPC8cM3dGTriP3Vec
lbl_8026BFD8:
/* 8026BFD8  38 60 00 01 */	li r3, 1
/* 8026BFDC  48 00 02 38 */	b lbl_8026C214
lbl_8026BFE0:
/* 8026BFE0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8026BFE4  FC 00 02 10 */	fabs f0, f0
/* 8026BFE8  FC 00 00 18 */	frsp f0, f0
/* 8026BFEC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026BFF0  40 81 00 3C */	ble lbl_8026C02C
/* 8026BFF4  7F C3 F3 78 */	mr r3, r30
/* 8026BFF8  38 81 00 80 */	addi r4, r1, 0x80
/* 8026BFFC  C0 22 B7 18 */	lfs f1, lit_2256(r2)
/* 8026C000  4B FF DE 19 */	bl cM3d_CrossX_Tri__FPC8cM3dGTriPC3Vecf
/* 8026C004  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026C008  41 82 00 5C */	beq lbl_8026C064
/* 8026C00C  28 1F 00 00 */	cmplwi r31, 0
/* 8026C010  41 82 00 14 */	beq lbl_8026C024
/* 8026C014  7F A3 EB 78 */	mr r3, r29
/* 8026C018  7F C4 F3 78 */	mr r4, r30
/* 8026C01C  7F E5 FB 78 */	mr r5, r31
/* 8026C020  4B FF FE 3D */	bl cM3d_CalcSphVsTriCrossPoint__FPC8cM3dGSphPC8cM3dGTriP3Vec
lbl_8026C024:
/* 8026C024  38 60 00 01 */	li r3, 1
/* 8026C028  48 00 01 EC */	b lbl_8026C214
lbl_8026C02C:
/* 8026C02C  7F C3 F3 78 */	mr r3, r30
/* 8026C030  38 81 00 80 */	addi r4, r1, 0x80
/* 8026C034  C0 22 B7 18 */	lfs f1, lit_2256(r2)
/* 8026C038  4B FF EB A1 */	bl cM3d_CrossZ_Tri__FPC8cM3dGTriPC3Vecf
/* 8026C03C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026C040  41 82 00 24 */	beq lbl_8026C064
/* 8026C044  28 1F 00 00 */	cmplwi r31, 0
/* 8026C048  41 82 00 14 */	beq lbl_8026C05C
/* 8026C04C  7F A3 EB 78 */	mr r3, r29
/* 8026C050  7F C4 F3 78 */	mr r4, r30
/* 8026C054  7F E5 FB 78 */	mr r5, r31
/* 8026C058  4B FF FE 05 */	bl cM3d_CalcSphVsTriCrossPoint__FPC8cM3dGSphPC8cM3dGTriP3Vec
lbl_8026C05C:
/* 8026C05C  38 60 00 01 */	li r3, 1
/* 8026C060  48 00 01 B4 */	b lbl_8026C214
lbl_8026C064:
/* 8026C064  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8026C068  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8026C06C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8026C070  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8026C074  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8026C078  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8026C07C  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8026C080  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8026C084  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8026C088  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8026C08C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8026C090  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8026C094  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8026C098  38 81 00 68 */	addi r4, r1, 0x68
/* 8026C09C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8026C0A0  48 00 32 09 */	bl __ct__8cM3dGLinFRC4cXyzRC4cXyz
/* 8026C0A4  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8026C0A8  7F A4 EB 78 */	mr r4, r29
/* 8026C0AC  38 A1 00 20 */	addi r5, r1, 0x20
/* 8026C0B0  4B FF F1 D1 */	bl cM3d_Cross_LinSph__FPC8cM3dGLinPC8cM3dGSphP3Vec
/* 8026C0B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026C0B8  41 82 00 30 */	beq lbl_8026C0E8
/* 8026C0BC  28 1F 00 00 */	cmplwi r31, 0
/* 8026C0C0  41 82 00 14 */	beq lbl_8026C0D4
/* 8026C0C4  7F A3 EB 78 */	mr r3, r29
/* 8026C0C8  7F C4 F3 78 */	mr r4, r30
/* 8026C0CC  7F E5 FB 78 */	mr r5, r31
/* 8026C0D0  4B FF FD 8D */	bl cM3d_CalcSphVsTriCrossPoint__FPC8cM3dGSphPC8cM3dGTriP3Vec
lbl_8026C0D4:
/* 8026C0D4  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026C0D8  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026C0DC  90 01 00 DC */	stw r0, 0xdc(r1)
/* 8026C0E0  38 60 00 01 */	li r3, 1
/* 8026C0E4  48 00 01 30 */	b lbl_8026C214
lbl_8026C0E8:
/* 8026C0E8  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8026C0EC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8026C0F0  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8026C0F4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8026C0F8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8026C0FC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8026C100  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8026C104  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8026C108  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8026C10C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8026C110  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8026C114  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8026C118  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8026C11C  38 81 00 50 */	addi r4, r1, 0x50
/* 8026C120  38 A1 00 44 */	addi r5, r1, 0x44
/* 8026C124  48 00 31 85 */	bl __ct__8cM3dGLinFRC4cXyzRC4cXyz
/* 8026C128  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8026C12C  7F A4 EB 78 */	mr r4, r29
/* 8026C130  38 A1 00 14 */	addi r5, r1, 0x14
/* 8026C134  4B FF F1 4D */	bl cM3d_Cross_LinSph__FPC8cM3dGLinPC8cM3dGSphP3Vec
/* 8026C138  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026C13C  41 82 00 34 */	beq lbl_8026C170
/* 8026C140  28 1F 00 00 */	cmplwi r31, 0
/* 8026C144  41 82 00 14 */	beq lbl_8026C158
/* 8026C148  7F A3 EB 78 */	mr r3, r29
/* 8026C14C  7F C4 F3 78 */	mr r4, r30
/* 8026C150  7F E5 FB 78 */	mr r5, r31
/* 8026C154  4B FF FD 09 */	bl cM3d_CalcSphVsTriCrossPoint__FPC8cM3dGSphPC8cM3dGTriP3Vec
lbl_8026C158:
/* 8026C158  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026C15C  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026C160  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8026C164  90 01 00 DC */	stw r0, 0xdc(r1)
/* 8026C168  38 60 00 01 */	li r3, 1
/* 8026C16C  48 00 00 A8 */	b lbl_8026C214
lbl_8026C170:
/* 8026C170  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8026C174  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8026C178  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8026C17C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8026C180  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8026C184  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8026C188  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8026C18C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8026C190  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8026C194  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8026C198  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8026C19C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8026C1A0  38 61 00 8C */	addi r3, r1, 0x8c
/* 8026C1A4  38 81 00 38 */	addi r4, r1, 0x38
/* 8026C1A8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8026C1AC  48 00 30 FD */	bl __ct__8cM3dGLinFRC4cXyzRC4cXyz
/* 8026C1B0  38 61 00 8C */	addi r3, r1, 0x8c
/* 8026C1B4  7F A4 EB 78 */	mr r4, r29
/* 8026C1B8  38 A1 00 08 */	addi r5, r1, 8
/* 8026C1BC  4B FF F0 C5 */	bl cM3d_Cross_LinSph__FPC8cM3dGLinPC8cM3dGSphP3Vec
/* 8026C1C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026C1C4  41 82 00 38 */	beq lbl_8026C1FC
/* 8026C1C8  28 1F 00 00 */	cmplwi r31, 0
/* 8026C1CC  41 82 00 14 */	beq lbl_8026C1E0
/* 8026C1D0  7F A3 EB 78 */	mr r3, r29
/* 8026C1D4  7F C4 F3 78 */	mr r4, r30
/* 8026C1D8  7F E5 FB 78 */	mr r5, r31
/* 8026C1DC  4B FF FC 81 */	bl cM3d_CalcSphVsTriCrossPoint__FPC8cM3dGSphPC8cM3dGTriP3Vec
lbl_8026C1E0:
/* 8026C1E0  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026C1E4  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026C1E8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8026C1EC  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8026C1F0  90 01 00 DC */	stw r0, 0xdc(r1)
/* 8026C1F4  38 60 00 01 */	li r3, 1
/* 8026C1F8  48 00 00 1C */	b lbl_8026C214
lbl_8026C1FC:
/* 8026C1FC  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 8026C200  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 8026C204  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8026C208  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8026C20C  90 01 00 DC */	stw r0, 0xdc(r1)
/* 8026C210  38 60 00 00 */	li r3, 0
lbl_8026C214:
/* 8026C214  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8026C218  48 0F 60 11 */	bl _restgpr_29
/* 8026C21C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8026C220  7C 08 03 A6 */	mtlr r0
/* 8026C224  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8026C228  4E 80 00 20 */	blr 
