lbl_80BD069C:
/* 80BD069C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BD06A0  7C 08 02 A6 */	mflr r0
/* 80BD06A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BD06A8  39 61 00 40 */	addi r11, r1, 0x40
/* 80BD06AC  4B 79 1B 31 */	bl _savegpr_29
/* 80BD06B0  7C 7D 1B 78 */	mr r29, r3
/* 80BD06B4  3C 60 80 BD */	lis r3, ccCylSrc@ha /* 0x80BD30C0@ha */
/* 80BD06B8  3B E3 30 C0 */	addi r31, r3, ccCylSrc@l /* 0x80BD30C0@l */
/* 80BD06BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD06C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD06C4  88 03 09 74 */	lbz r0, 0x974(r3)
/* 80BD06C8  28 00 00 00 */	cmplwi r0, 0
/* 80BD06CC  40 82 00 0C */	bne lbl_80BD06D8
/* 80BD06D0  38 60 00 00 */	li r3, 0
/* 80BD06D4  48 00 01 58 */	b lbl_80BD082C
lbl_80BD06D8:
/* 80BD06D8  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80BD06DC  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80BD06E0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80BD06E4  7C 03 00 50 */	subf r0, r3, r0
/* 80BD06E8  7C 03 07 34 */	extsh r3, r0
/* 80BD06EC  4B 79 49 E5 */	bl abs
/* 80BD06F0  2C 03 50 00 */	cmpwi r3, 0x5000
/* 80BD06F4  40 80 00 0C */	bge lbl_80BD0700
/* 80BD06F8  38 60 00 00 */	li r3, 0
/* 80BD06FC  48 00 01 30 */	b lbl_80BD082C
lbl_80BD0700:
/* 80BD0700  C0 5D 05 E8 */	lfs f2, 0x5e8(r29)
/* 80BD0704  C0 1D 05 E0 */	lfs f0, 0x5e0(r29)
/* 80BD0708  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BD070C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80BD0710  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BD0714  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80BD0718  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80BD071C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BD0720  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BD0724  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BD0728  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80BD072C  38 61 00 0C */	addi r3, r1, 0xc
/* 80BD0730  38 81 00 18 */	addi r4, r1, 0x18
/* 80BD0734  4B 77 6C 69 */	bl PSVECSquareDistance
/* 80BD0738  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80BD073C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD0740  40 81 00 58 */	ble lbl_80BD0798
/* 80BD0744  FC 00 08 34 */	frsqrte f0, f1
/* 80BD0748  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 80BD074C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD0750  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 80BD0754  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD0758  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD075C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD0760  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD0764  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD0768  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD076C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD0770  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD0774  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD0778  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD077C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD0780  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD0784  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD0788  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD078C  FC 21 00 32 */	fmul f1, f1, f0
/* 80BD0790  FC 20 08 18 */	frsp f1, f1
/* 80BD0794  48 00 00 88 */	b lbl_80BD081C
lbl_80BD0798:
/* 80BD0798  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 80BD079C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD07A0  40 80 00 10 */	bge lbl_80BD07B0
/* 80BD07A4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BD07A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BD07AC  48 00 00 70 */	b lbl_80BD081C
lbl_80BD07B0:
/* 80BD07B0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BD07B4  80 81 00 08 */	lwz r4, 8(r1)
/* 80BD07B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BD07BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BD07C0  7C 03 00 00 */	cmpw r3, r0
/* 80BD07C4  41 82 00 14 */	beq lbl_80BD07D8
/* 80BD07C8  40 80 00 40 */	bge lbl_80BD0808
/* 80BD07CC  2C 03 00 00 */	cmpwi r3, 0
/* 80BD07D0  41 82 00 20 */	beq lbl_80BD07F0
/* 80BD07D4  48 00 00 34 */	b lbl_80BD0808
lbl_80BD07D8:
/* 80BD07D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD07DC  41 82 00 0C */	beq lbl_80BD07E8
/* 80BD07E0  38 00 00 01 */	li r0, 1
/* 80BD07E4  48 00 00 28 */	b lbl_80BD080C
lbl_80BD07E8:
/* 80BD07E8  38 00 00 02 */	li r0, 2
/* 80BD07EC  48 00 00 20 */	b lbl_80BD080C
lbl_80BD07F0:
/* 80BD07F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD07F4  41 82 00 0C */	beq lbl_80BD0800
/* 80BD07F8  38 00 00 05 */	li r0, 5
/* 80BD07FC  48 00 00 10 */	b lbl_80BD080C
lbl_80BD0800:
/* 80BD0800  38 00 00 03 */	li r0, 3
/* 80BD0804  48 00 00 08 */	b lbl_80BD080C
lbl_80BD0808:
/* 80BD0808  38 00 00 04 */	li r0, 4
lbl_80BD080C:
/* 80BD080C  2C 00 00 01 */	cmpwi r0, 1
/* 80BD0810  40 82 00 0C */	bne lbl_80BD081C
/* 80BD0814  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BD0818  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BD081C:
/* 80BD081C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80BD0820  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD0824  7C 00 00 26 */	mfcr r0
/* 80BD0828  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_80BD082C:
/* 80BD082C  39 61 00 40 */	addi r11, r1, 0x40
/* 80BD0830  4B 79 19 F9 */	bl _restgpr_29
/* 80BD0834  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BD0838  7C 08 03 A6 */	mtlr r0
/* 80BD083C  38 21 00 40 */	addi r1, r1, 0x40
/* 80BD0840  4E 80 00 20 */	blr 
