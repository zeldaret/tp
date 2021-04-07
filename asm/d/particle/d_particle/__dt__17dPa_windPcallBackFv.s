lbl_8004FF2C:
/* 8004FF2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004FF30  7C 08 02 A6 */	mflr r0
/* 8004FF34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004FF38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004FF3C  93 C1 00 08 */	stw r30, 8(r1)
/* 8004FF40  7C 7E 1B 79 */	or. r30, r3, r3
/* 8004FF44  7C 9F 23 78 */	mr r31, r4
/* 8004FF48  41 82 00 28 */	beq lbl_8004FF70
/* 8004FF4C  3C 80 80 3B */	lis r4, __vt__17dPa_windPcallBack@ha /* 0x803A8434@ha */
/* 8004FF50  38 04 84 34 */	addi r0, r4, __vt__17dPa_windPcallBack@l /* 0x803A8434@l */
/* 8004FF54  90 1E 00 00 */	stw r0, 0(r30)
/* 8004FF58  38 80 00 00 */	li r4, 0
/* 8004FF5C  48 22 F0 49 */	bl __dt__19JPAParticleCallBackFv
/* 8004FF60  7F E0 07 35 */	extsh. r0, r31
/* 8004FF64  40 81 00 0C */	ble lbl_8004FF70
/* 8004FF68  7F C3 F3 78 */	mr r3, r30
/* 8004FF6C  48 27 ED D1 */	bl __dl__FPv
lbl_8004FF70:
/* 8004FF70  7F C3 F3 78 */	mr r3, r30
/* 8004FF74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004FF78  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004FF7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004FF80  7C 08 03 A6 */	mtlr r0
/* 8004FF84  38 21 00 10 */	addi r1, r1, 0x10
/* 8004FF88  4E 80 00 20 */	blr 
