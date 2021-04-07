lbl_801041E8:
/* 801041E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801041EC  7C 08 02 A6 */	mflr r0
/* 801041F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801041F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801041F8  93 C1 00 08 */	stw r30, 8(r1)
/* 801041FC  7C 7E 1B 78 */	mr r30, r3
/* 80104200  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 80104204  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80104208  3C 80 80 39 */	lis r4, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 8010420C  38 84 ED 2C */	addi r4, r4, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 80104210  C0 44 00 80 */	lfs f2, 0x80(r4)
/* 80104214  4B FA F7 11 */	bl setNormalSpeedF__9daAlink_cFff
/* 80104218  7F C3 F3 78 */	mr r3, r30
/* 8010421C  38 80 00 45 */	li r4, 0x45
/* 80104220  4B FB BF 45 */	bl checkSetItemTrigger__9daAlink_cFi
/* 80104224  2C 03 00 00 */	cmpwi r3, 0
/* 80104228  41 82 00 10 */	beq lbl_80104238
/* 8010422C  7F C3 F3 78 */	mr r3, r30
/* 80104230  38 80 00 01 */	li r4, 1
/* 80104234  4B FD E3 4D */	bl setHeavyBoots__9daAlink_cFi
lbl_80104238:
/* 80104238  7F C3 F3 78 */	mr r3, r30
/* 8010423C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80104240  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80104244  7D 89 03 A6 */	mtctr r12
/* 80104248  4E 80 04 21 */	bctrl 
/* 8010424C  2C 03 00 00 */	cmpwi r3, 0
/* 80104250  41 82 00 30 */	beq lbl_80104280
/* 80104254  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 80104258  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8010425C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80104260  40 81 00 10 */	ble lbl_80104270
/* 80104264  7F C3 F3 78 */	mr r3, r30
/* 80104268  48 00 04 09 */	bl procSwimMoveInit__9daAlink_cFv
/* 8010426C  48 00 00 70 */	b lbl_801042DC
lbl_80104270:
/* 80104270  7F C3 F3 78 */	mr r3, r30
/* 80104274  38 80 00 00 */	li r4, 0
/* 80104278  48 00 00 81 */	bl procSwimWaitInit__9daAlink_cFi
/* 8010427C  48 00 00 60 */	b lbl_801042DC
lbl_80104280:
/* 80104280  7F E3 FB 78 */	mr r3, r31
/* 80104284  48 05 A2 49 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80104288  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010428C  41 82 00 14 */	beq lbl_801042A0
/* 80104290  7F C3 F3 78 */	mr r3, r30
/* 80104294  38 80 00 00 */	li r4, 0
/* 80104298  48 00 00 61 */	bl procSwimWaitInit__9daAlink_cFi
/* 8010429C  48 00 00 40 */	b lbl_801042DC
lbl_801042A0:
/* 801042A0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 801042A4  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 801042A8  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 801042AC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 801042B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801042B4  40 81 00 20 */	ble lbl_801042D4
/* 801042B8  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 801042BC  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 801042C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801042C4  40 81 00 10 */	ble lbl_801042D4
/* 801042C8  7F C3 F3 78 */	mr r3, r30
/* 801042CC  48 00 03 A5 */	bl procSwimMoveInit__9daAlink_cFv
/* 801042D0  48 00 00 0C */	b lbl_801042DC
lbl_801042D4:
/* 801042D4  C0 1E 33 B4 */	lfs f0, 0x33b4(r30)
/* 801042D8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_801042DC:
/* 801042DC  38 60 00 01 */	li r3, 1
/* 801042E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801042E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801042E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801042EC  7C 08 03 A6 */	mtlr r0
/* 801042F0  38 21 00 10 */	addi r1, r1, 0x10
/* 801042F4  4E 80 00 20 */	blr 
