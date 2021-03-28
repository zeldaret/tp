lbl_80C21FC8:
/* 80C21FC8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C21FCC  7C 08 02 A6 */	mflr r0
/* 80C21FD0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C21FD4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80C21FD8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80C21FDC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80C21FE0  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80C21FE4  39 61 00 40 */	addi r11, r1, 0x40
/* 80C21FE8  4B 74 01 EC */	b _savegpr_27
/* 80C21FEC  7C 7E 1B 78 */	mr r30, r3
/* 80C21FF0  3C 60 80 C2 */	lis r3, l_dir_vec@ha
/* 80C21FF4  3B A3 42 F4 */	addi r29, r3, l_dir_vec@l
/* 80C21FF8  3B E0 FF FF */	li r31, -1
/* 80C21FFC  80 7E 09 BC */	lwz r3, 0x9bc(r30)
/* 80C22000  28 03 00 00 */	cmplwi r3, 0
/* 80C22004  40 82 00 0C */	bne lbl_80C22010
/* 80C22008  38 60 FF FF */	li r3, -1
/* 80C2200C  48 00 01 CC */	b lbl_80C221D8
lbl_80C22010:
/* 80C22010  83 83 00 08 */	lwz r28, 8(r3)
/* 80C22014  3B 60 00 00 */	li r27, 0
/* 80C22018  C3 FD 00 7C */	lfs f31, 0x7c(r29)
/* 80C2201C  C3 DD 00 98 */	lfs f30, 0x98(r29)
/* 80C22020  48 00 01 30 */	b lbl_80C22150
lbl_80C22024:
/* 80C22024  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80C22028  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C2202C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C22030  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80C22034  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C22038  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 80C2203C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80C22040  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C22044  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 80C22048  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C2204C  38 61 00 0C */	addi r3, r1, 0xc
/* 80C22050  38 81 00 18 */	addi r4, r1, 0x18
/* 80C22054  4B 72 53 48 */	b PSVECSquareDistance
/* 80C22058  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80C2205C  40 81 00 58 */	ble lbl_80C220B4
/* 80C22060  FC 00 08 34 */	frsqrte f0, f1
/* 80C22064  C8 9D 00 80 */	lfd f4, 0x80(r29)
/* 80C22068  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2206C  C8 7D 00 88 */	lfd f3, 0x88(r29)
/* 80C22070  FC 00 00 32 */	fmul f0, f0, f0
/* 80C22074  FC 01 00 32 */	fmul f0, f1, f0
/* 80C22078  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2207C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C22080  FC 44 00 32 */	fmul f2, f4, f0
/* 80C22084  FC 00 00 32 */	fmul f0, f0, f0
/* 80C22088  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2208C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C22090  FC 02 00 32 */	fmul f0, f2, f0
/* 80C22094  FC 44 00 32 */	fmul f2, f4, f0
/* 80C22098  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2209C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C220A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C220A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C220A8  FC 21 00 32 */	fmul f1, f1, f0
/* 80C220AC  FC 20 08 18 */	frsp f1, f1
/* 80C220B0  48 00 00 88 */	b lbl_80C22138
lbl_80C220B4:
/* 80C220B4  C8 1D 00 90 */	lfd f0, 0x90(r29)
/* 80C220B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C220BC  40 80 00 10 */	bge lbl_80C220CC
/* 80C220C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C220C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C220C8  48 00 00 70 */	b lbl_80C22138
lbl_80C220CC:
/* 80C220CC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C220D0  80 81 00 08 */	lwz r4, 8(r1)
/* 80C220D4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C220D8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C220DC  7C 03 00 00 */	cmpw r3, r0
/* 80C220E0  41 82 00 14 */	beq lbl_80C220F4
/* 80C220E4  40 80 00 40 */	bge lbl_80C22124
/* 80C220E8  2C 03 00 00 */	cmpwi r3, 0
/* 80C220EC  41 82 00 20 */	beq lbl_80C2210C
/* 80C220F0  48 00 00 34 */	b lbl_80C22124
lbl_80C220F4:
/* 80C220F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C220F8  41 82 00 0C */	beq lbl_80C22104
/* 80C220FC  38 00 00 01 */	li r0, 1
/* 80C22100  48 00 00 28 */	b lbl_80C22128
lbl_80C22104:
/* 80C22104  38 00 00 02 */	li r0, 2
/* 80C22108  48 00 00 20 */	b lbl_80C22128
lbl_80C2210C:
/* 80C2210C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C22110  41 82 00 0C */	beq lbl_80C2211C
/* 80C22114  38 00 00 05 */	li r0, 5
/* 80C22118  48 00 00 10 */	b lbl_80C22128
lbl_80C2211C:
/* 80C2211C  38 00 00 03 */	li r0, 3
/* 80C22120  48 00 00 08 */	b lbl_80C22128
lbl_80C22124:
/* 80C22124  38 00 00 04 */	li r0, 4
lbl_80C22128:
/* 80C22128  2C 00 00 01 */	cmpwi r0, 1
/* 80C2212C  40 82 00 0C */	bne lbl_80C22138
/* 80C22130  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C22134  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C22138:
/* 80C22138  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80C2213C  40 80 00 0C */	bge lbl_80C22148
/* 80C22140  3B FB 00 01 */	addi r31, r27, 1
/* 80C22144  48 00 00 1C */	b lbl_80C22160
lbl_80C22148:
/* 80C22148  3B 9C 00 10 */	addi r28, r28, 0x10
/* 80C2214C  3B 7B 00 01 */	addi r27, r27, 1
lbl_80C22150:
/* 80C22150  80 7E 09 BC */	lwz r3, 0x9bc(r30)
/* 80C22154  A0 03 00 00 */	lhz r0, 0(r3)
/* 80C22158  7C 1B 00 00 */	cmpw r27, r0
/* 80C2215C  41 80 FE C8 */	blt lbl_80C22024
lbl_80C22160:
/* 80C22160  2C 1F 00 00 */	cmpwi r31, 0
/* 80C22164  40 80 00 0C */	bge lbl_80C22170
/* 80C22168  7F E3 FB 78 */	mr r3, r31
/* 80C2216C  48 00 00 6C */	b lbl_80C221D8
lbl_80C22170:
/* 80C22170  3B 60 00 00 */	li r27, 0
/* 80C22174  48 00 00 54 */	b lbl_80C221C8
lbl_80C22178:
/* 80C22178  38 00 00 01 */	li r0, 1
/* 80C2217C  7C 00 D8 30 */	slw r0, r0, r27
/* 80C22180  7F E0 00 39 */	and. r0, r31, r0
/* 80C22184  41 82 00 24 */	beq lbl_80C221A8
/* 80C22188  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C2218C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C22190  88 1E 09 C0 */	lbz r0, 0x9c0(r30)
/* 80C22194  7C 80 DA 14 */	add r4, r0, r27
/* 80C22198  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C2219C  7C 05 07 74 */	extsb r5, r0
/* 80C221A0  4B 41 30 60 */	b onSwitch__10dSv_info_cFii
/* 80C221A4  48 00 00 20 */	b lbl_80C221C4
lbl_80C221A8:
/* 80C221A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C221AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C221B0  88 1E 09 C0 */	lbz r0, 0x9c0(r30)
/* 80C221B4  7C 80 DA 14 */	add r4, r0, r27
/* 80C221B8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C221BC  7C 05 07 74 */	extsb r5, r0
/* 80C221C0  4B 41 30 F0 */	b offSwitch__10dSv_info_cFii
lbl_80C221C4:
/* 80C221C4  3B 7B 00 01 */	addi r27, r27, 1
lbl_80C221C8:
/* 80C221C8  88 1E 09 C1 */	lbz r0, 0x9c1(r30)
/* 80C221CC  7C 1B 00 00 */	cmpw r27, r0
/* 80C221D0  41 80 FF A8 */	blt lbl_80C22178
/* 80C221D4  7F E3 FB 78 */	mr r3, r31
lbl_80C221D8:
/* 80C221D8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80C221DC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80C221E0  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80C221E4  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80C221E8  39 61 00 40 */	addi r11, r1, 0x40
/* 80C221EC  4B 74 00 34 */	b _restgpr_27
/* 80C221F0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C221F4  7C 08 03 A6 */	mtlr r0
/* 80C221F8  38 21 00 60 */	addi r1, r1, 0x60
/* 80C221FC  4E 80 00 20 */	blr 
