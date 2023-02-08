lbl_80CB15B8:
/* 80CB15B8  3C 60 80 CB */	lis r3, l_resName@ha /* 0x80CB189C@ha */
/* 80CB15BC  38 63 18 9C */	addi r3, r3, l_resName@l /* 0x80CB189C@l */
/* 80CB15C0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB15C4  4E 80 00 20 */	blr 
