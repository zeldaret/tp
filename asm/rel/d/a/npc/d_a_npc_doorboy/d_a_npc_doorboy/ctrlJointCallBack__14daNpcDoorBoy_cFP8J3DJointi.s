lbl_809AB724:
/* 809AB724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AB728  7C 08 02 A6 */	mflr r0
/* 809AB72C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AB730  7C 60 1B 78 */	mr r0, r3
/* 809AB734  2C 04 00 00 */	cmpwi r4, 0
/* 809AB738  40 82 00 24 */	bne lbl_809AB75C
/* 809AB73C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 809AB740  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 809AB744  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 809AB748  80 65 00 14 */	lwz r3, 0x14(r5)
/* 809AB74C  28 03 00 00 */	cmplwi r3, 0
/* 809AB750  41 82 00 0C */	beq lbl_809AB75C
/* 809AB754  7C 04 03 78 */	mr r4, r0
/* 809AB758  4B FF FE 21 */	bl ctrlJoint__14daNpcDoorBoy_cFP8J3DJointP8J3DModel
lbl_809AB75C:
/* 809AB75C  38 60 00 01 */	li r3, 1
/* 809AB760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AB764  7C 08 03 A6 */	mtlr r0
/* 809AB768  38 21 00 10 */	addi r1, r1, 0x10
/* 809AB76C  4E 80 00 20 */	blr 
