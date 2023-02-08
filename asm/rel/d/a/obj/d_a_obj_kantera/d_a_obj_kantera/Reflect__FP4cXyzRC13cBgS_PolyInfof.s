lbl_80C38678:
/* 80C38678  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80C3867C  7C 08 02 A6 */	mflr r0
/* 80C38680  90 01 00 94 */	stw r0, 0x94(r1)
/* 80C38684  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80C38688  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80C3868C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80C38690  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80C38694  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80C38698  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80C3869C  7C 7F 1B 78 */	mr r31, r3
/* 80C386A0  FF E0 08 90 */	fmr f31, f1
/* 80C386A4  3C 60 80 C4 */	lis r3, l_cyl_src@ha /* 0x80C39648@ha */
/* 80C386A8  3B C3 96 48 */	addi r30, r3, l_cyl_src@l /* 0x80C39648@l */
/* 80C386AC  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C39850@ha */
/* 80C386B0  38 03 98 50 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C39850@l */
/* 80C386B4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80C386B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C386BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C386C0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C386C4  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80C386C8  4B 43 C0 7D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C386CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C386D0  41 82 02 6C */	beq lbl_80C3893C
/* 80C386D4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C386D8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C386DC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C386E0  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80C386E4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C386E8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C386EC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C386F0  4B 70 EA 49 */	bl PSVECSquareMag
/* 80C386F4  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80C386F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C386FC  40 81 00 58 */	ble lbl_80C38754
/* 80C38700  FC 00 08 34 */	frsqrte f0, f1
/* 80C38704  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80C38708  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3870C  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80C38710  FC 00 00 32 */	fmul f0, f0, f0
/* 80C38714  FC 01 00 32 */	fmul f0, f1, f0
/* 80C38718  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3871C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C38720  FC 44 00 32 */	fmul f2, f4, f0
/* 80C38724  FC 00 00 32 */	fmul f0, f0, f0
/* 80C38728  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3872C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C38730  FC 02 00 32 */	fmul f0, f2, f0
/* 80C38734  FC 44 00 32 */	fmul f2, f4, f0
/* 80C38738  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3873C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C38740  FC 03 00 28 */	fsub f0, f3, f0
/* 80C38744  FC 02 00 32 */	fmul f0, f2, f0
/* 80C38748  FF C1 00 32 */	fmul f30, f1, f0
/* 80C3874C  FF C0 F0 18 */	frsp f30, f30
/* 80C38750  48 00 00 90 */	b lbl_80C387E0
lbl_80C38754:
/* 80C38754  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80C38758  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3875C  40 80 00 10 */	bge lbl_80C3876C
/* 80C38760  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C38764  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C38768  48 00 00 78 */	b lbl_80C387E0
lbl_80C3876C:
/* 80C3876C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C38770  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C38774  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C38778  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C3877C  7C 03 00 00 */	cmpw r3, r0
/* 80C38780  41 82 00 14 */	beq lbl_80C38794
/* 80C38784  40 80 00 40 */	bge lbl_80C387C4
/* 80C38788  2C 03 00 00 */	cmpwi r3, 0
/* 80C3878C  41 82 00 20 */	beq lbl_80C387AC
/* 80C38790  48 00 00 34 */	b lbl_80C387C4
lbl_80C38794:
/* 80C38794  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C38798  41 82 00 0C */	beq lbl_80C387A4
/* 80C3879C  38 00 00 01 */	li r0, 1
/* 80C387A0  48 00 00 28 */	b lbl_80C387C8
lbl_80C387A4:
/* 80C387A4  38 00 00 02 */	li r0, 2
/* 80C387A8  48 00 00 20 */	b lbl_80C387C8
lbl_80C387AC:
/* 80C387AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C387B0  41 82 00 0C */	beq lbl_80C387BC
/* 80C387B4  38 00 00 05 */	li r0, 5
/* 80C387B8  48 00 00 10 */	b lbl_80C387C8
lbl_80C387BC:
/* 80C387BC  38 00 00 03 */	li r0, 3
/* 80C387C0  48 00 00 08 */	b lbl_80C387C8
lbl_80C387C4:
/* 80C387C4  38 00 00 04 */	li r0, 4
lbl_80C387C8:
/* 80C387C8  2C 00 00 01 */	cmpwi r0, 1
/* 80C387CC  40 82 00 10 */	bne lbl_80C387DC
/* 80C387D0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C387D4  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C387D8  48 00 00 08 */	b lbl_80C387E0
lbl_80C387DC:
/* 80C387DC  FF C0 08 90 */	fmr f30, f1
lbl_80C387E0:
/* 80C387E0  7F E3 FB 78 */	mr r3, r31
/* 80C387E4  38 81 00 4C */	addi r4, r1, 0x4c
/* 80C387E8  38 A1 00 40 */	addi r5, r1, 0x40
/* 80C387EC  4B 70 EA DD */	bl C_VECReflect
/* 80C387F0  38 61 00 34 */	addi r3, r1, 0x34
/* 80C387F4  38 81 00 40 */	addi r4, r1, 0x40
/* 80C387F8  FC 20 F0 90 */	fmr f1, f30
/* 80C387FC  4B 62 E3 89 */	bl __ml__4cXyzCFf
/* 80C38800  38 61 00 28 */	addi r3, r1, 0x28
/* 80C38804  38 81 00 34 */	addi r4, r1, 0x34
/* 80C38808  FC 20 F8 90 */	fmr f1, f31
/* 80C3880C  4B 62 E3 79 */	bl __ml__4cXyzCFf
/* 80C38810  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C38814  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80C38818  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C3881C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80C38820  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80C38824  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80C38828  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C3882C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C38830  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C38834  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80C38838  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C3883C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C38840  38 61 00 10 */	addi r3, r1, 0x10
/* 80C38844  4B 70 E8 F5 */	bl PSVECSquareMag
/* 80C38848  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80C3884C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C38850  40 81 00 58 */	ble lbl_80C388A8
/* 80C38854  FC 00 08 34 */	frsqrte f0, f1
/* 80C38858  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80C3885C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C38860  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80C38864  FC 00 00 32 */	fmul f0, f0, f0
/* 80C38868  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3886C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C38870  FC 02 00 32 */	fmul f0, f2, f0
/* 80C38874  FC 44 00 32 */	fmul f2, f4, f0
/* 80C38878  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3887C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C38880  FC 03 00 28 */	fsub f0, f3, f0
/* 80C38884  FC 02 00 32 */	fmul f0, f2, f0
/* 80C38888  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3888C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C38890  FC 01 00 32 */	fmul f0, f1, f0
/* 80C38894  FC 03 00 28 */	fsub f0, f3, f0
/* 80C38898  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3889C  FC 21 00 32 */	fmul f1, f1, f0
/* 80C388A0  FC 20 08 18 */	frsp f1, f1
/* 80C388A4  48 00 00 88 */	b lbl_80C3892C
lbl_80C388A8:
/* 80C388A8  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80C388AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C388B0  40 80 00 10 */	bge lbl_80C388C0
/* 80C388B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C388B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C388BC  48 00 00 70 */	b lbl_80C3892C
lbl_80C388C0:
/* 80C388C0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C388C4  80 81 00 08 */	lwz r4, 8(r1)
/* 80C388C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C388CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C388D0  7C 03 00 00 */	cmpw r3, r0
/* 80C388D4  41 82 00 14 */	beq lbl_80C388E8
/* 80C388D8  40 80 00 40 */	bge lbl_80C38918
/* 80C388DC  2C 03 00 00 */	cmpwi r3, 0
/* 80C388E0  41 82 00 20 */	beq lbl_80C38900
/* 80C388E4  48 00 00 34 */	b lbl_80C38918
lbl_80C388E8:
/* 80C388E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C388EC  41 82 00 0C */	beq lbl_80C388F8
/* 80C388F0  38 00 00 01 */	li r0, 1
/* 80C388F4  48 00 00 28 */	b lbl_80C3891C
lbl_80C388F8:
/* 80C388F8  38 00 00 02 */	li r0, 2
/* 80C388FC  48 00 00 20 */	b lbl_80C3891C
lbl_80C38900:
/* 80C38900  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C38904  41 82 00 0C */	beq lbl_80C38910
/* 80C38908  38 00 00 05 */	li r0, 5
/* 80C3890C  48 00 00 10 */	b lbl_80C3891C
lbl_80C38910:
/* 80C38910  38 00 00 03 */	li r0, 3
/* 80C38914  48 00 00 08 */	b lbl_80C3891C
lbl_80C38918:
/* 80C38918  38 00 00 04 */	li r0, 4
lbl_80C3891C:
/* 80C3891C  2C 00 00 01 */	cmpwi r0, 1
/* 80C38920  40 82 00 0C */	bne lbl_80C3892C
/* 80C38924  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C38928  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C3892C:
/* 80C3892C  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C39850@ha */
/* 80C38930  38 03 98 50 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C39850@l */
/* 80C38934  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80C38938  48 00 00 14 */	b lbl_80C3894C
lbl_80C3893C:
/* 80C3893C  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C39850@ha */
/* 80C38940  38 03 98 50 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C39850@l */
/* 80C38944  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80C38948  C0 3E 00 44 */	lfs f1, 0x44(r30)
lbl_80C3894C:
/* 80C3894C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80C38950  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80C38954  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80C38958  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80C3895C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80C38960  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80C38964  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80C38968  7C 08 03 A6 */	mtlr r0
/* 80C3896C  38 21 00 90 */	addi r1, r1, 0x90
/* 80C38970  4E 80 00 20 */	blr 
