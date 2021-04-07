lbl_8057D7F8:
/* 8057D7F8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8057D7FC  7C 08 02 A6 */	mflr r0
/* 8057D800  90 01 00 94 */	stw r0, 0x94(r1)
/* 8057D804  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8057D808  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8057D80C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8057D810  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8057D814  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8057D818  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8057D81C  7C 7F 1B 78 */	mr r31, r3
/* 8057D820  FF E0 08 90 */	fmr f31, f1
/* 8057D824  3C 60 80 58 */	lis r3, lit_3656@ha /* 0x8057F570@ha */
/* 8057D828  3B C3 F5 70 */	addi r30, r3, lit_3656@l /* 0x8057F570@l */
/* 8057D82C  3C 60 80 58 */	lis r3, __vt__8cM3dGPla@ha /* 0x8057F824@ha */
/* 8057D830  38 03 F8 24 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x8057F824@l */
/* 8057D834  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8057D838  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057D83C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057D840  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8057D844  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8057D848  4B AF 6E FD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8057D84C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8057D850  41 82 02 6C */	beq lbl_8057DABC
/* 8057D854  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8057D858  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8057D85C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8057D860  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8057D864  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8057D868  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8057D86C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8057D870  4B DC 98 C9 */	bl PSVECSquareMag
/* 8057D874  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8057D878  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057D87C  40 81 00 58 */	ble lbl_8057D8D4
/* 8057D880  FC 00 08 34 */	frsqrte f0, f1
/* 8057D884  C8 9E 00 58 */	lfd f4, 0x58(r30)
/* 8057D888  FC 44 00 32 */	fmul f2, f4, f0
/* 8057D88C  C8 7E 00 60 */	lfd f3, 0x60(r30)
/* 8057D890  FC 00 00 32 */	fmul f0, f0, f0
/* 8057D894  FC 01 00 32 */	fmul f0, f1, f0
/* 8057D898  FC 03 00 28 */	fsub f0, f3, f0
/* 8057D89C  FC 02 00 32 */	fmul f0, f2, f0
/* 8057D8A0  FC 44 00 32 */	fmul f2, f4, f0
/* 8057D8A4  FC 00 00 32 */	fmul f0, f0, f0
/* 8057D8A8  FC 01 00 32 */	fmul f0, f1, f0
/* 8057D8AC  FC 03 00 28 */	fsub f0, f3, f0
/* 8057D8B0  FC 02 00 32 */	fmul f0, f2, f0
/* 8057D8B4  FC 44 00 32 */	fmul f2, f4, f0
/* 8057D8B8  FC 00 00 32 */	fmul f0, f0, f0
/* 8057D8BC  FC 01 00 32 */	fmul f0, f1, f0
/* 8057D8C0  FC 03 00 28 */	fsub f0, f3, f0
/* 8057D8C4  FC 02 00 32 */	fmul f0, f2, f0
/* 8057D8C8  FF C1 00 32 */	fmul f30, f1, f0
/* 8057D8CC  FF C0 F0 18 */	frsp f30, f30
/* 8057D8D0  48 00 00 90 */	b lbl_8057D960
lbl_8057D8D4:
/* 8057D8D4  C8 1E 00 68 */	lfd f0, 0x68(r30)
/* 8057D8D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057D8DC  40 80 00 10 */	bge lbl_8057D8EC
/* 8057D8E0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8057D8E4  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8057D8E8  48 00 00 78 */	b lbl_8057D960
lbl_8057D8EC:
/* 8057D8EC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8057D8F0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8057D8F4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8057D8F8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8057D8FC  7C 03 00 00 */	cmpw r3, r0
/* 8057D900  41 82 00 14 */	beq lbl_8057D914
/* 8057D904  40 80 00 40 */	bge lbl_8057D944
/* 8057D908  2C 03 00 00 */	cmpwi r3, 0
/* 8057D90C  41 82 00 20 */	beq lbl_8057D92C
/* 8057D910  48 00 00 34 */	b lbl_8057D944
lbl_8057D914:
/* 8057D914  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8057D918  41 82 00 0C */	beq lbl_8057D924
/* 8057D91C  38 00 00 01 */	li r0, 1
/* 8057D920  48 00 00 28 */	b lbl_8057D948
lbl_8057D924:
/* 8057D924  38 00 00 02 */	li r0, 2
/* 8057D928  48 00 00 20 */	b lbl_8057D948
lbl_8057D92C:
/* 8057D92C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8057D930  41 82 00 0C */	beq lbl_8057D93C
/* 8057D934  38 00 00 05 */	li r0, 5
/* 8057D938  48 00 00 10 */	b lbl_8057D948
lbl_8057D93C:
/* 8057D93C  38 00 00 03 */	li r0, 3
/* 8057D940  48 00 00 08 */	b lbl_8057D948
lbl_8057D944:
/* 8057D944  38 00 00 04 */	li r0, 4
lbl_8057D948:
/* 8057D948  2C 00 00 01 */	cmpwi r0, 1
/* 8057D94C  40 82 00 10 */	bne lbl_8057D95C
/* 8057D950  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8057D954  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8057D958  48 00 00 08 */	b lbl_8057D960
lbl_8057D95C:
/* 8057D95C  FF C0 08 90 */	fmr f30, f1
lbl_8057D960:
/* 8057D960  7F E3 FB 78 */	mr r3, r31
/* 8057D964  38 81 00 4C */	addi r4, r1, 0x4c
/* 8057D968  38 A1 00 40 */	addi r5, r1, 0x40
/* 8057D96C  4B DC 99 5D */	bl C_VECReflect
/* 8057D970  38 61 00 34 */	addi r3, r1, 0x34
/* 8057D974  38 81 00 40 */	addi r4, r1, 0x40
/* 8057D978  FC 20 F0 90 */	fmr f1, f30
/* 8057D97C  4B CE 92 09 */	bl __ml__4cXyzCFf
/* 8057D980  38 61 00 28 */	addi r3, r1, 0x28
/* 8057D984  38 81 00 34 */	addi r4, r1, 0x34
/* 8057D988  FC 20 F8 90 */	fmr f1, f31
/* 8057D98C  4B CE 91 F9 */	bl __ml__4cXyzCFf
/* 8057D990  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8057D994  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8057D998  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8057D99C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8057D9A0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8057D9A4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8057D9A8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8057D9AC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8057D9B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8057D9B4  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8057D9B8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8057D9BC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8057D9C0  38 61 00 10 */	addi r3, r1, 0x10
/* 8057D9C4  4B DC 97 75 */	bl PSVECSquareMag
/* 8057D9C8  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8057D9CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057D9D0  40 81 00 58 */	ble lbl_8057DA28
/* 8057D9D4  FC 00 08 34 */	frsqrte f0, f1
/* 8057D9D8  C8 9E 00 58 */	lfd f4, 0x58(r30)
/* 8057D9DC  FC 44 00 32 */	fmul f2, f4, f0
/* 8057D9E0  C8 7E 00 60 */	lfd f3, 0x60(r30)
/* 8057D9E4  FC 00 00 32 */	fmul f0, f0, f0
/* 8057D9E8  FC 01 00 32 */	fmul f0, f1, f0
/* 8057D9EC  FC 03 00 28 */	fsub f0, f3, f0
/* 8057D9F0  FC 02 00 32 */	fmul f0, f2, f0
/* 8057D9F4  FC 44 00 32 */	fmul f2, f4, f0
/* 8057D9F8  FC 00 00 32 */	fmul f0, f0, f0
/* 8057D9FC  FC 01 00 32 */	fmul f0, f1, f0
/* 8057DA00  FC 03 00 28 */	fsub f0, f3, f0
/* 8057DA04  FC 02 00 32 */	fmul f0, f2, f0
/* 8057DA08  FC 44 00 32 */	fmul f2, f4, f0
/* 8057DA0C  FC 00 00 32 */	fmul f0, f0, f0
/* 8057DA10  FC 01 00 32 */	fmul f0, f1, f0
/* 8057DA14  FC 03 00 28 */	fsub f0, f3, f0
/* 8057DA18  FC 02 00 32 */	fmul f0, f2, f0
/* 8057DA1C  FC 21 00 32 */	fmul f1, f1, f0
/* 8057DA20  FC 20 08 18 */	frsp f1, f1
/* 8057DA24  48 00 00 88 */	b lbl_8057DAAC
lbl_8057DA28:
/* 8057DA28  C8 1E 00 68 */	lfd f0, 0x68(r30)
/* 8057DA2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057DA30  40 80 00 10 */	bge lbl_8057DA40
/* 8057DA34  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8057DA38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8057DA3C  48 00 00 70 */	b lbl_8057DAAC
lbl_8057DA40:
/* 8057DA40  D0 21 00 08 */	stfs f1, 8(r1)
/* 8057DA44  80 81 00 08 */	lwz r4, 8(r1)
/* 8057DA48  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8057DA4C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8057DA50  7C 03 00 00 */	cmpw r3, r0
/* 8057DA54  41 82 00 14 */	beq lbl_8057DA68
/* 8057DA58  40 80 00 40 */	bge lbl_8057DA98
/* 8057DA5C  2C 03 00 00 */	cmpwi r3, 0
/* 8057DA60  41 82 00 20 */	beq lbl_8057DA80
/* 8057DA64  48 00 00 34 */	b lbl_8057DA98
lbl_8057DA68:
/* 8057DA68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8057DA6C  41 82 00 0C */	beq lbl_8057DA78
/* 8057DA70  38 00 00 01 */	li r0, 1
/* 8057DA74  48 00 00 28 */	b lbl_8057DA9C
lbl_8057DA78:
/* 8057DA78  38 00 00 02 */	li r0, 2
/* 8057DA7C  48 00 00 20 */	b lbl_8057DA9C
lbl_8057DA80:
/* 8057DA80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8057DA84  41 82 00 0C */	beq lbl_8057DA90
/* 8057DA88  38 00 00 05 */	li r0, 5
/* 8057DA8C  48 00 00 10 */	b lbl_8057DA9C
lbl_8057DA90:
/* 8057DA90  38 00 00 03 */	li r0, 3
/* 8057DA94  48 00 00 08 */	b lbl_8057DA9C
lbl_8057DA98:
/* 8057DA98  38 00 00 04 */	li r0, 4
lbl_8057DA9C:
/* 8057DA9C  2C 00 00 01 */	cmpwi r0, 1
/* 8057DAA0  40 82 00 0C */	bne lbl_8057DAAC
/* 8057DAA4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8057DAA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8057DAAC:
/* 8057DAAC  3C 60 80 58 */	lis r3, __vt__8cM3dGPla@ha /* 0x8057F824@ha */
/* 8057DAB0  38 03 F8 24 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x8057F824@l */
/* 8057DAB4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8057DAB8  48 00 00 14 */	b lbl_8057DACC
lbl_8057DABC:
/* 8057DABC  3C 60 80 58 */	lis r3, __vt__8cM3dGPla@ha /* 0x8057F824@ha */
/* 8057DAC0  38 03 F8 24 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x8057F824@l */
/* 8057DAC4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8057DAC8  C0 3E 00 54 */	lfs f1, 0x54(r30)
lbl_8057DACC:
/* 8057DACC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8057DAD0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8057DAD4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8057DAD8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8057DADC  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8057DAE0  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8057DAE4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8057DAE8  7C 08 03 A6 */	mtlr r0
/* 8057DAEC  38 21 00 90 */	addi r1, r1, 0x90
/* 8057DAF0  4E 80 00 20 */	blr 
