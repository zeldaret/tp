lbl_8084819C:
/* 8084819C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808481A0  7C 08 02 A6 */	mflr r0
/* 808481A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 808481A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808481AC  7C 7F 1B 78 */	mr r31, r3
/* 808481B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808481B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808481B8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 808481BC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 808481C0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 808481C4  7D 89 03 A6 */	mtctr r12
/* 808481C8  4E 80 04 21 */	bctrl 
/* 808481CC  28 03 00 00 */	cmplwi r3, 0
/* 808481D0  41 82 00 14 */	beq lbl_808481E4
/* 808481D4  3C 60 80 85 */	lis r3, baseRidePos@ha /* 0x80848EB0@ha */
/* 808481D8  38 03 8E B0 */	addi r0, r3, baseRidePos@l /* 0x80848EB0@l */
/* 808481DC  90 1F 07 04 */	stw r0, 0x704(r31)
/* 808481E0  48 00 00 10 */	b lbl_808481F0
lbl_808481E4:
/* 808481E4  3C 60 80 85 */	lis r3, frontRidePos@ha /* 0x80848EBC@ha */
/* 808481E8  38 03 8E BC */	addi r0, r3, frontRidePos@l /* 0x80848EBC@l */
/* 808481EC  90 1F 07 04 */	stw r0, 0x704(r31)
lbl_808481F0:
/* 808481F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808481F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808481F8  7C 08 03 A6 */	mtlr r0
/* 808481FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80848200  4E 80 00 20 */	blr 
