lbl_800216DC:
/* 800216DC  3C 60 80 3A */	lis r3, l_fpcLy_LayerList@ha /* 0x803A39DC@ha */
/* 800216E0  38 63 39 DC */	addi r3, r3, l_fpcLy_LayerList@l /* 0x803A39DC@l */
/* 800216E4  80 63 00 00 */	lwz r3, 0(r3)
/* 800216E8  4E 80 00 20 */	blr 
