lbl_80C77C2C:
/* 80C77C2C  3C 80 80 C8 */	lis r4, lit_3651@ha /* 0x80C799E4@ha */
/* 80C77C30  38 A4 99 E4 */	addi r5, r4, lit_3651@l /* 0x80C799E4@l */
/* 80C77C34  3C 80 80 C8 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80C79D24@ha */
/* 80C77C38  38 04 9D 24 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80C79D24@l */
/* 80C77C3C  90 03 00 00 */	stw r0, 0(r3)
/* 80C77C40  3C 80 80 C8 */	lis r4, __vt__16daTogeRoll_HIO_c@ha /* 0x80C79D18@ha */
/* 80C77C44  38 04 9D 18 */	addi r0, r4, __vt__16daTogeRoll_HIO_c@l /* 0x80C79D18@l */
/* 80C77C48  90 03 00 00 */	stw r0, 0(r3)
/* 80C77C4C  38 00 00 3C */	li r0, 0x3c
/* 80C77C50  98 03 00 04 */	stb r0, 4(r3)
/* 80C77C54  38 00 00 01 */	li r0, 1
/* 80C77C58  98 03 00 05 */	stb r0, 5(r3)
/* 80C77C5C  38 00 00 1E */	li r0, 0x1e
/* 80C77C60  98 03 00 06 */	stb r0, 6(r3)
/* 80C77C64  C0 05 00 00 */	lfs f0, 0(r5)
/* 80C77C68  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C77C6C  C0 05 00 04 */	lfs f0, 4(r5)
/* 80C77C70  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C77C74  C0 05 00 08 */	lfs f0, 8(r5)
/* 80C77C78  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C77C7C  4E 80 00 20 */	blr 
