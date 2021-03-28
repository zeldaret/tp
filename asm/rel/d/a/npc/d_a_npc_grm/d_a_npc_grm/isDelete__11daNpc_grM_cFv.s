lbl_809D4810:
/* 809D4810  88 63 10 BC */	lbz r3, 0x10bc(r3)
/* 809D4814  30 03 FF FF */	addic r0, r3, -1
/* 809D4818  7C 60 19 10 */	subfe r3, r0, r3
/* 809D481C  4E 80 00 20 */	blr 
