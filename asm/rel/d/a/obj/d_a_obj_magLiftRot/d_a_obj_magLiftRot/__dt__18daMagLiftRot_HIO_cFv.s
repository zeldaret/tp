lbl_80C8FA3C:
/* 80C8FA3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8FA40  7C 08 02 A6 */	mflr r0
/* 80C8FA44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8FA48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8FA4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C8FA50  41 82 00 30 */	beq lbl_80C8FA80
/* 80C8FA54  3C 60 80 C9 */	lis r3, __vt__18daMagLiftRot_HIO_c@ha
/* 80C8FA58  38 03 FC A0 */	addi r0, r3, __vt__18daMagLiftRot_HIO_c@l
/* 80C8FA5C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8FA60  41 82 00 10 */	beq lbl_80C8FA70
/* 80C8FA64  3C 60 80 C9 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C8FA68  38 03 FC AC */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C8FA6C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C8FA70:
/* 80C8FA70  7C 80 07 35 */	extsh. r0, r4
/* 80C8FA74  40 81 00 0C */	ble lbl_80C8FA80
/* 80C8FA78  7F E3 FB 78 */	mr r3, r31
/* 80C8FA7C  4B 63 F2 C0 */	b __dl__FPv
lbl_80C8FA80:
/* 80C8FA80  7F E3 FB 78 */	mr r3, r31
/* 80C8FA84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8FA88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8FA8C  7C 08 03 A6 */	mtlr r0
/* 80C8FA90  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8FA94  4E 80 00 20 */	blr 
