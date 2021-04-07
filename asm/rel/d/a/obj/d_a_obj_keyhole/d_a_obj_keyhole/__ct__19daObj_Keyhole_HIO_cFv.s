lbl_80C4124C:
/* 80C4124C  3C 80 80 C4 */	lis r4, __vt__19daObj_Keyhole_HIO_c@ha /* 0x80C43C94@ha */
/* 80C41250  38 04 3C 94 */	addi r0, r4, __vt__19daObj_Keyhole_HIO_c@l /* 0x80C43C94@l */
/* 80C41254  90 03 00 00 */	stw r0, 0(r3)
/* 80C41258  38 00 FF FF */	li r0, -1
/* 80C4125C  98 03 00 04 */	stb r0, 4(r3)
/* 80C41260  3C 80 80 C4 */	lis r4, lit_3655@ha /* 0x80C439E4@ha */
/* 80C41264  C0 04 39 E4 */	lfs f0, lit_3655@l(r4)  /* 0x80C439E4@l */
/* 80C41268  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C4126C  4E 80 00 20 */	blr 
