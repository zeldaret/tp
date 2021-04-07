lbl_80CA46D8:
/* 80CA46D8  3C 60 80 CA */	lis r3, l_resName@ha /* 0x80CA4A40@ha */
/* 80CA46DC  38 63 4A 40 */	addi r3, r3, l_resName@l /* 0x80CA4A40@l */
/* 80CA46E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CA46E4  4E 80 00 20 */	blr 
