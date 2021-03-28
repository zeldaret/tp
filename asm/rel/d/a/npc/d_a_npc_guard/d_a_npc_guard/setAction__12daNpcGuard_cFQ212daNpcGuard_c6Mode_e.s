lbl_809EFE20:
/* 809EFE20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EFE24  7C 08 02 A6 */	mflr r0
/* 809EFE28  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EFE2C  80 03 0B 0C */	lwz r0, 0xb0c(r3)
/* 809EFE30  90 03 0B 10 */	stw r0, 0xb10(r3)
/* 809EFE34  90 83 0B 0C */	stw r4, 0xb0c(r3)
/* 809EFE38  80 03 0B 0C */	lwz r0, 0xb0c(r3)
/* 809EFE3C  1C A0 00 18 */	mulli r5, r0, 0x18
/* 809EFE40  3C 80 80 9F */	lis r4, ActionTable__12daNpcGuard_c@ha
/* 809EFE44  38 04 2E 18 */	addi r0, r4, ActionTable__12daNpcGuard_c@l
/* 809EFE48  7C 00 2A 14 */	add r0, r0, r5
/* 809EFE4C  90 03 0B 08 */	stw r0, 0xb08(r3)
/* 809EFE50  48 00 00 15 */	bl callInit__12daNpcGuard_cFv
/* 809EFE54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EFE58  7C 08 03 A6 */	mtlr r0
/* 809EFE5C  38 21 00 10 */	addi r1, r1, 0x10
/* 809EFE60  4E 80 00 20 */	blr 
