lbl_80A087DC:
/* 80A087DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A087E0  7C 08 02 A6 */	mflr r0
/* 80A087E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A087E8  7C 60 1B 78 */	mr r0, r3
/* 80A087EC  2C 04 00 00 */	cmpwi r4, 0
/* 80A087F0  40 82 00 24 */	bne lbl_80A08814
/* 80A087F4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80A087F8  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80A087FC  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80A08800  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80A08804  28 03 00 00 */	cmplwi r3, 0
/* 80A08808  41 82 00 0C */	beq lbl_80A08814
/* 80A0880C  7C 04 03 78 */	mr r4, r0
/* 80A08810  4B FF FD DD */	bl ctrlJoint__12daNpcImpal_cFP8J3DJointP8J3DModel
lbl_80A08814:
/* 80A08814  38 60 00 01 */	li r3, 1
/* 80A08818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0881C  7C 08 03 A6 */	mtlr r0
/* 80A08820  38 21 00 10 */	addi r1, r1, 0x10
/* 80A08824  4E 80 00 20 */	blr 
