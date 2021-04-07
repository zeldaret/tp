lbl_80BC288C:
/* 80BC288C  3C 80 80 BC */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80BC32B8@ha */
/* 80BC2890  38 04 32 B8 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80BC32B8@l */
/* 80BC2894  90 03 00 00 */	stw r0, 0(r3)
/* 80BC2898  3C 80 80 BC */	lis r4, __vt__14daBsGate_HIO_c@ha /* 0x80BC32AC@ha */
/* 80BC289C  38 04 32 AC */	addi r0, r4, __vt__14daBsGate_HIO_c@l /* 0x80BC32AC@l */
/* 80BC28A0  90 03 00 00 */	stw r0, 0(r3)
/* 80BC28A4  3C 80 80 BC */	lis r4, lit_3625@ha /* 0x80BC31A0@ha */
/* 80BC28A8  C0 04 31 A0 */	lfs f0, lit_3625@l(r4)  /* 0x80BC31A0@l */
/* 80BC28AC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BC28B0  3C 80 80 BC */	lis r4, lit_3626@ha /* 0x80BC31A4@ha */
/* 80BC28B4  C0 04 31 A4 */	lfs f0, lit_3626@l(r4)  /* 0x80BC31A4@l */
/* 80BC28B8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BC28BC  38 00 00 03 */	li r0, 3
/* 80BC28C0  98 03 00 0C */	stb r0, 0xc(r3)
/* 80BC28C4  4E 80 00 20 */	blr 
