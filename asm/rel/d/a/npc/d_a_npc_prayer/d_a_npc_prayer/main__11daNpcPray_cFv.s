lbl_80AB390C:
/* 80AB390C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB3910  7C 08 02 A6 */	mflr r0
/* 80AB3914  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB3918  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB391C  7C 7F 1B 78 */	mr r31, r3
/* 80AB3920  38 7F 0D DC */	addi r3, r31, 0xddc
/* 80AB3924  4B 8A E6 F5 */	bl __ptmf_test
/* 80AB3928  2C 03 00 00 */	cmpwi r3, 0
/* 80AB392C  41 82 00 18 */	beq lbl_80AB3944
/* 80AB3930  7F E3 FB 78 */	mr r3, r31
/* 80AB3934  38 80 00 00 */	li r4, 0
/* 80AB3938  39 9F 0D DC */	addi r12, r31, 0xddc
/* 80AB393C  4B 8A E7 49 */	bl __ptmf_scall
/* 80AB3940  60 00 00 00 */	nop 
lbl_80AB3944:
/* 80AB3944  7F E3 FB 78 */	mr r3, r31
/* 80AB3948  48 00 04 75 */	bl playMotion__11daNpcPray_cFv
/* 80AB394C  38 60 00 00 */	li r3, 0
/* 80AB3950  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB3954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB3958  7C 08 03 A6 */	mtlr r0
/* 80AB395C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB3960  4E 80 00 20 */	blr 
