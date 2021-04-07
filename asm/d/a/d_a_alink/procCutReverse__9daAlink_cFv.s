lbl_800D41FC:
/* 800D41FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D4200  7C 08 02 A6 */	mflr r0
/* 800D4204  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D4208  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D420C  93 C1 00 08 */	stw r30, 8(r1)
/* 800D4210  7C 7E 1B 78 */	mr r30, r3
/* 800D4214  4B FE 5D 3D */	bl checkGroundSpecialMode__9daAlink_cFv
/* 800D4218  2C 03 00 00 */	cmpwi r3, 0
/* 800D421C  41 82 00 0C */	beq lbl_800D4228
/* 800D4220  38 60 00 01 */	li r3, 1
/* 800D4224  48 00 00 C0 */	b lbl_800D42E4
lbl_800D4228:
/* 800D4228  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800D422C  38 7E 33 98 */	addi r3, r30, 0x3398
/* 800D4230  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D4234  3C 80 80 39 */	lis r4, m__17daAlinkHIO_cut_c0@ha /* 0x8038DE8C@ha */
/* 800D4238  38 84 DE 8C */	addi r4, r4, m__17daAlinkHIO_cut_c0@l /* 0x8038DE8C@l */
/* 800D423C  C0 44 00 68 */	lfs f2, 0x68(r4)
/* 800D4240  48 19 C5 01 */	bl cLib_chaseF__FPfff
/* 800D4244  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800D4248  2C 00 00 00 */	cmpwi r0, 0
/* 800D424C  40 82 00 18 */	bne lbl_800D4264
/* 800D4250  7F C3 F3 78 */	mr r3, r30
/* 800D4254  4B FF E4 31 */	bl checkCutTurnCharge__9daAlink_cFv
/* 800D4258  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 800D425C  64 00 08 00 */	oris r0, r0, 0x800
/* 800D4260  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_800D4264:
/* 800D4264  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800D4268  2C 00 00 00 */	cmpwi r0, 0
/* 800D426C  41 82 00 10 */	beq lbl_800D427C
/* 800D4270  7F C3 F3 78 */	mr r3, r30
/* 800D4274  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800D4278  48 00 8D 91 */	bl setUpperGuardAnime__9daAlink_cFf
lbl_800D427C:
/* 800D427C  7F E3 FB 78 */	mr r3, r31
/* 800D4280  48 08 A2 4D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800D4284  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D4288  41 82 00 1C */	beq lbl_800D42A4
/* 800D428C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800D4290  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800D4294  7F C3 F3 78 */	mr r3, r30
/* 800D4298  38 80 00 00 */	li r4, 0
/* 800D429C  4B FE 5E 35 */	bl checkNextAction__9daAlink_cFi
/* 800D42A0  48 00 00 40 */	b lbl_800D42E0
lbl_800D42A4:
/* 800D42A4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D42A8  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 800D42AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D42B0  40 81 00 30 */	ble lbl_800D42E0
/* 800D42B4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800D42B8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800D42BC  7F C3 F3 78 */	mr r3, r30
/* 800D42C0  38 80 00 01 */	li r4, 1
/* 800D42C4  4B FE 5E 0D */	bl checkNextAction__9daAlink_cFi
/* 800D42C8  2C 03 00 00 */	cmpwi r3, 0
/* 800D42CC  40 82 00 14 */	bne lbl_800D42E0
/* 800D42D0  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800D42D4  3C 63 00 01 */	addis r3, r3, 1
/* 800D42D8  38 03 80 00 */	addi r0, r3, -32768
/* 800D42DC  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_800D42E0:
/* 800D42E0  38 60 00 01 */	li r3, 1
lbl_800D42E4:
/* 800D42E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D42E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D42EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D42F0  7C 08 03 A6 */	mtlr r0
/* 800D42F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800D42F8  4E 80 00 20 */	blr 
