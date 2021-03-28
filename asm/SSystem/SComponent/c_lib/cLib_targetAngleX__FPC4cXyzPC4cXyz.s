lbl_80270C74:
/* 80270C74  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80270C78  7C 08 02 A6 */	mflr r0
/* 80270C7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80270C80  7C 65 1B 78 */	mr r5, r3
/* 80270C84  38 61 00 18 */	addi r3, r1, 0x18
/* 80270C88  4B FF 5E AD */	bl __mi__4cXyzCFRC3Vec
/* 80270C8C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80270C90  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80270C94  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80270C98  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80270C9C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80270CA0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80270CA4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80270CA8  C0 02 B7 E0 */	lfs f0, lit_2262(r2)
/* 80270CAC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80270CB0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80270CB4  38 61 00 0C */	addi r3, r1, 0xc
/* 80270CB8  48 0D 64 81 */	bl PSVECSquareMag
/* 80270CBC  C0 02 B7 E0 */	lfs f0, lit_2262(r2)
/* 80270CC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80270CC4  40 81 00 58 */	ble lbl_80270D1C
/* 80270CC8  FC 00 08 34 */	frsqrte f0, f1
/* 80270CCC  C8 82 B7 E8 */	lfd f4, lit_2379(r2)
/* 80270CD0  FC 44 00 32 */	fmul f2, f4, f0
/* 80270CD4  C8 62 B7 F0 */	lfd f3, lit_2380(r2)
/* 80270CD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80270CDC  FC 01 00 32 */	fmul f0, f1, f0
/* 80270CE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80270CE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80270CE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80270CEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80270CF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80270CF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80270CF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80270CFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80270D00  FC 00 00 32 */	fmul f0, f0, f0
/* 80270D04  FC 01 00 32 */	fmul f0, f1, f0
/* 80270D08  FC 03 00 28 */	fsub f0, f3, f0
/* 80270D0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80270D10  FC 41 00 32 */	fmul f2, f1, f0
/* 80270D14  FC 40 10 18 */	frsp f2, f2
/* 80270D18  48 00 00 90 */	b lbl_80270DA8
lbl_80270D1C:
/* 80270D1C  C8 02 B7 F8 */	lfd f0, lit_2381(r2)
/* 80270D20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80270D24  40 80 00 10 */	bge lbl_80270D34
/* 80270D28  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80270D2C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80270D30  48 00 00 78 */	b lbl_80270DA8
lbl_80270D34:
/* 80270D34  D0 21 00 08 */	stfs f1, 8(r1)
/* 80270D38  80 81 00 08 */	lwz r4, 8(r1)
/* 80270D3C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80270D40  3C 00 7F 80 */	lis r0, 0x7f80
/* 80270D44  7C 03 00 00 */	cmpw r3, r0
/* 80270D48  41 82 00 14 */	beq lbl_80270D5C
/* 80270D4C  40 80 00 40 */	bge lbl_80270D8C
/* 80270D50  2C 03 00 00 */	cmpwi r3, 0
/* 80270D54  41 82 00 20 */	beq lbl_80270D74
/* 80270D58  48 00 00 34 */	b lbl_80270D8C
lbl_80270D5C:
/* 80270D5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80270D60  41 82 00 0C */	beq lbl_80270D6C
/* 80270D64  38 00 00 01 */	li r0, 1
/* 80270D68  48 00 00 28 */	b lbl_80270D90
lbl_80270D6C:
/* 80270D6C  38 00 00 02 */	li r0, 2
/* 80270D70  48 00 00 20 */	b lbl_80270D90
lbl_80270D74:
/* 80270D74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80270D78  41 82 00 0C */	beq lbl_80270D84
/* 80270D7C  38 00 00 05 */	li r0, 5
/* 80270D80  48 00 00 10 */	b lbl_80270D90
lbl_80270D84:
/* 80270D84  38 00 00 03 */	li r0, 3
/* 80270D88  48 00 00 08 */	b lbl_80270D90
lbl_80270D8C:
/* 80270D8C  38 00 00 04 */	li r0, 4
lbl_80270D90:
/* 80270D90  2C 00 00 01 */	cmpwi r0, 1
/* 80270D94  40 82 00 10 */	bne lbl_80270DA4
/* 80270D98  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80270D9C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80270DA0  48 00 00 08 */	b lbl_80270DA8
lbl_80270DA4:
/* 80270DA4  FC 40 08 90 */	fmr f2, f1
lbl_80270DA8:
/* 80270DA8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80270DAC  4B FF 68 C9 */	bl cM_atan2s__Fff
/* 80270DB0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80270DB4  7C 08 03 A6 */	mtlr r0
/* 80270DB8  38 21 00 30 */	addi r1, r1, 0x30
/* 80270DBC  4E 80 00 20 */	blr 
